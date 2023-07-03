#!/usr/bin/env python3
'''
Author: zwhy wa22201149@stu.ahu.edu.cn
Date: 2023-05-24 09:54:46
LastEditors: zwhy wa22201149@stu.ahu.edu.cn
LastEditTime: 2023-06-30 15:59:39
FilePath: /cross_device_track/src/cross_device_tracking/scripts/fusion_detection_results.py
Description: 
'''
import sys
import os

path = "/home/zwhy/workspace/cross_device_track"
# 核心
sys.path.insert(0, path + "/src/cross_device_tracking/scripts")

print(sys.executable)
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
            sub_topic1='/site3_percept_topic', 
            sub_type1=RsPerceptionMsg,
            sub_topic2='/site25_percept_topic',
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
        self.rotation_matrix_3 = np.asarray([[-0.1769985,   0.98405179, -0.01770906],
                                             [-0.98418125, -0.17682429,  0.0109744 ],
                                             [0.00766799,  0.01937137,  0.99978295]])
        self.translation_vector_3 = np.array([[-116.137],[-151.939],[-6.889236450195312]])

        self.rotation_matrix_4 = np.asarray([[-0.34126769 , 0.93996558, -0.00103941],
                                             [-0.93988725 ,-0.34125316, -0.01257899],
                                             [-0.01217852, -0.00331587,  0.99992034]])
        self.translation_vector_4 = np.array([[12.268],[-36.141],[-2.572]])

        self.rotation_matrix_5 = np.asarray([[0.59719472,  0.80156111 ,-0.02929593],
                                             [-0.80207434,  0.59705014 ,-0.01441818],
                                             [0.00593408 , 0.03210797 , 0.99946679]])
        self.translation_vector_5 = np.array([[11.842],[-163.613],[-4.211]])

        self.rotation_matrix_25 = np.asarray([[0.77599946, -0.63064375,  0.01064403],
                                              [0.63070051,  0.77602107, -0.0028579],
                                              [-0.00645767,  0.00893092,  0.99993927]])
        self.translation_vector_25 = np.array([[-297.244],[-161.664],[-6.922]])


    def run(self):
        self.subscriber1 = message_filters.Subscriber(self.sub_topic1,
                                                      self.sub_type1)
        self.subscriber2 = message_filters.Subscriber(self.sub_topic2,
                                                      self.sub_type2)
        ts = MyApproximateTimeSynchronizer(
            [self.subscriber1, self.subscriber2],
            10,
            0.1,
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
        # det_list1 = self.toenu(det_list1, self.rotation_matrix_4, self.translation_vector_4)
        # det_list2 = self.toenu(det_list2, self.rotation_matrix_3, self.translation_vector_3)
        # 第二步，计算两个检测结果之间 object 的距离
        dist = self.distance(det_list1, det_list2)
        # 小于一定值的距离认为是同一个物体（目前的策略是只保留 lidar1 下的物体）
        # print(dist)
        match_obj = []
        for i in range(len(dist)):
            for j in range(len(dist[i])):
                if dist[i][j] < self.dist_threshold:  #小于某一个距离阈值认为是同一个物体
                    match_obj.append(j)
        match_obj.reverse()
        for index in match_obj:
            det_list2.pop(index)

        # 将剩余 object 结合到一起，完成融合
        det_list_fusion_result = []
        for obj in det_list1:
            det_list_fusion_result.append(obj)
        for obj in det_list2:
            det_list_fusion_result.append(obj)
        return det_list_fusion_result

    def toenu(self, list, rotation_martix,translation_vector):
        for obj in list:
            point = np.array([obj.coreinfo.center.x.data, obj.coreinfo.center.y.data, obj.coreinfo.center.z.data])
            transformed_point = self.transform_point(point,rotation_martix,translation_vector)
            obj.coreinfo.center.x.data = transformed_point[0]
            obj.coreinfo.center.y.data = transformed_point[1]
            obj.coreinfo.center.z.data = transformed_point[2]
        return list

    def transform_point(self,point, rotation_matrix, translation_vector):
        # 将点转换为齐次坐标
        point = np.append(point, 1)
        # 构造变换矩阵
        transformation_matrix = np.vstack((np.hstack((rotation_matrix, translation_vector)), [0, 0, 0, 1]))
        # print("*********************************************************")
        # print(transformation_matrix)
        # print("*********************************************************")
        # 变换点
        transformed_point = np.dot(transformation_matrix, point)
        # 返回变换后的点
        return transformed_point[:3]

    def distance(self, det_list1, det_list2):
        dist = []
        for obj1 in det_list1:
            distobj1 = []
            for obj2 in det_list2:
                x_dist = (obj1.coreinfo.center.x.data - obj2.coreinfo.center.x.data)**2
                y_dist = (obj1.coreinfo.center.y.data - obj2.coreinfo.center.y.data)**2
                z_dist = (obj1.coreinfo.center.z.data - obj2.coreinfo.center.z.data)**2

                obj1_obj2_dist = math.sqrt(x_dist + y_dist + z_dist)
                distobj1.append(obj1_obj2_dist)
            dist.append(distobj1)
        return dist


if __name__ == "__main__":
    rospy.init_node("fusion_detection_result")
    msgTrans = MsgTrans(1,
                        sub_topic1='/site3_percept_topic',
                        sub_topic2='/site25_percept_topic')
    msgTrans.run()
    rospy.spin()