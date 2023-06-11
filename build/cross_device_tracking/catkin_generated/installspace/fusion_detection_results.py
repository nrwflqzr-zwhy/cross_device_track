#!/usr/bin/env python3
'''
Author: zwhy wa22201149@stu.ahu.edu.cn
Date: 2023-05-24 09:54:46
LastEditors: zwhy wa22201149@stu.ahu.edu.cn
LastEditTime: 2023-06-11 14:45:22
FilePath: /cross_device_track/src/cross_device_tracking/scripts/fusion_detection_results.py
Description: 
'''
import sys
import os

path = "/home/zwhy/workspace/cross_device_track"
print("path = {0}".format(path))
# 核心
sys.path.insert(0, path + "/src/cross_device_tracking/scripts")

print("path = {0}".format(path))

import rospy
import message_filters
import numpy as np
import math
from all_msgs.msg import RsPerceptionMsg
from all_msgs.msg import Objects
from myApproximateTimeSynchronizer import MyApproximateTimeSynchronizer


class MsgTrans(object):

    def __init__(
            self,
            dist_threshold,
            sub_topic1='/site16_percept_topic',  #西侧雷达检测结果
            sub_type1=RsPerceptionMsg,
            sub_topic2='/site17_percept_topic',
            sub_type2=RsPerceptionMsg,
            pub_topic='/fusion_detection',
            pub_type=RsPerceptionMsg):
        #第一个话题和类型
        self.sub_topic1 = sub_topic1
        self.sub_type1 = sub_type1
        #第二个话题和类型
        self.sub_topic2 = sub_topic2
        self.sub_type2 = sub_type2
        #发布的话题和类型
        self.pub_topic = pub_topic
        self.pub_type = pub_type
        #两个检测结果的数据、时间
        self.obj_list1 = []
        self.obj_list2 = []
        self.timestamp1 = 0
        self.timestamp2 = 0
        self.dist_threshold = dist_threshold
        #保存融合后的结果(主要是重叠部分的两个检测结果保留一个)
        self.obj = []
        self.lidar_to_enu_16 = np.asarray(
            [[-0.71635481, -0.69691056, 0.03393306, -425.917],
             [0.69735469, -0.71672395, 0.00179464, -280.337],
             [0.02306993, 0.02494898, 0.9994225, -6.279708862304688],
             [0.00000000e+00, 0.00000000e+00, 0.00000000e+00, 1.00000000e+00]])

        ### 2023-3-7:
        ### self.west_lidar_to_enu_quat = np.array([-0.02116055,  0.01760372,  0.35040421,  0.93619401])
        ### self.east_lidar_to_enu_quat = np.array([-0.00575475, -0.00296919,  0.76783602, -0.6406137 ])

        self.lidar_to_enu_17 = np.asarray(
            [[-0.93116046, 0.36459978, -0.00268297, -439.526],
             [-0.36454281, -0.93110544, -0.01229604, -179.563],
             [-0.00698126, -0.01047153, 0.9999208, -5.753],
             [0.00000000e+00, 0.00000000e+00, 0.00000000e+00, 1.00000000e+00]])

    def run(self):
        self.subscriber1 = message_filters.Subscriber(self.sub_topic1,
                                                      self.sub_type1)
        self.subscriber2 = message_filters.Subscriber(self.sub_topic2,
                                                      self.sub_type2)
        ts = MyApproximateTimeSynchronizer(
            [self.subscriber1, self.subscriber2],
            10,
            10,
            allow_headerless=True)
        ts.registerCallback(self.callback)
        self.publisher = rospy.Publisher(self.pub_topic,
                                         self.pub_type,
                                         queue_size=10)

    def callback(self, msg_data1, msg_data2):
        # 获取时间和物体列表
        self.obj_list1 = msg_data1.lidarframe.objects.objects
        self.timestamp1 = msg_data1.lidarframe.timestamp.data
        self.obj_list2 = msg_data2.lidarframe.objects.objects
        self.timestamp2 = msg_data2.lidarframe.timestamp.data
        print("lidar1时间戳:{0},lidar2时间戳:{1}".format(self.timestamp1,
                                                   self.timestamp2))
        #得到的结果是Object[]，也就是Objects类型的
        self.obj = self.fusion_detection(det_list1=self.obj_list1,
                                         det_list2=self.obj_list2)
        # for obj in self.obj:
        #     print("x = {0}, y = {1}, z = {2}".format(
        #         obj.coreinfo.center.x.data, obj.coreinfo.center.y.data,
        #         obj.coreinfo.center.z.data))
        #然后直接将融合后的数据发送出去（先保持原始的格式试试）
        rsPerceptionMsg = RsPerceptionMsg()
        rsPerceptionMsg.lidarframe = msg_data1.lidarframe
        rsPerceptionMsg.lidarframe.objects.objects = self.obj  #将检测结果修改为融合后的部分，其余的部分与 lidar 1 保持一直
        #设备id应该是不需要了（只是为了保持数据的完整性能够发出去）
        rsPerceptionMsg.device_id.data = 0
        self.publisher.publish(rsPerceptionMsg)

    def fusion_detection(self, det_list1, det_list2):

        # 第一步，将二者都变换到enu 坐标系
        det_list1 = self.toenu(det_list1, self.lidar_to_enu_16)
        det_list2 = self.toenu(det_list2, self.lidar_to_enu_17)
        # 第二步，计算两个检测结果之间 object 的距离
        dist = self.distance(det_list1, det_list2)
        # 小于一定值的距离认为是同一个物体（目前的策略是只保留 lidar1 下的物体）
        match_obj = []
        for i in range(len(dist)):
            for j in range(len(dist[i])):
                if dist[i][j] < self.dist_threshold:  #小于某一个距离阈值认为是同一个物体
                    match_obj.append([i, j])

        for list in match_obj:
            del det_list2[list[1]]

        # 将剩余 object 结合到一起，完成融合
        det_list_fusion_result = []
        for obj in det_list1:
            det_list_fusion_result.append(obj)
        for obj in det_list2:
            det_list_fusion_result.append(obj)
        return det_list_fusion_result

    def toenu(self, list, transformation_matrix):
        point = []
        new_point = []
        for obj in list:
            point = [
                obj.coreinfo.center.x.data, obj.coreinfo.center.y.data,
                obj.coreinfo.center.z.data, 1
            ]
            new_point = np.dot(transformation_matrix, point)
            obj.coreinfo.center.x.data = new_point[0]
            obj.coreinfo.center.y.data = new_point[1]
            obj.coreinfo.center.z.data = new_point[2]
        return list

    def distance(self, det_list1, det_list2):
        dist = []
        for obj1 in det_list1:
            distobj1 = []
            for obj2 in det_list2:
                x_dist = (obj1.coreinfo.center.x.data -
                          obj2.coreinfo.center.x.data)**2
                y_dist = (obj1.coreinfo.center.y.data -
                          obj2.coreinfo.center.y.data)**2
                z_dist = (obj1.coreinfo.center.z.data -
                          obj2.coreinfo.center.z.data)**2

                obj1_obj2_dist = math.sqrt(x_dist + y_dist + z_dist)
                distobj1.append(obj1_obj2_dist)
            dist.append(distobj1)
        return dist


if __name__ == "__main__":
    rospy.init_node("fusion_detection_result")
    msgTrans = MsgTrans(1,
                        sub_topic1='/site16_percept_topic',
                        sub_topic2='/site17_percept_topic')
    msgTrans.run()
    rospy.spin()