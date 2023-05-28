'''
Author: zwhy wa22201149@stu.ahu.edu.cn
Date: 2023-05-24 09:54:46
LastEditors: zwhy wa22201149@stu.ahu.edu.cn
LastEditTime: 2023-05-28 13:59:46
FilePath: /cross_device_tracking/src/cross_device_tracking/scripts/fusion_detection_results.py
Description: 
'''
import rospy
import message_filters
import numpy as np
import math
from all_msgs.msg import RsPerceptionMsg
from all_msgs.msg import Objects


class MsgTrans(object):

    def __init__(
            self,
            dist_threshold,
            sub_topic1='detecion_object_west',  #西侧雷达检测结果
            sub_type1=RsPerceptionMsg,
            sub_topic2='detection_object_east',
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
        self.west_lidar_to_enu = np.asarray([
            [7.53813991e-01, -6.56837663e-01, 1.81315056e-02, -2.97086914e+02],
            [6.55347646e-01, 7.53538235e-01, 5.19575927e-02, -1.61894522e+02],
            [
                -4.77904866e-02, -2.72839208e-02, 9.98484680e-01,
                -2.53851837e+00
            ],
            [0.00000000e+00, 0.00000000e+00, 0.00000000e+00, 1.00000000e+00]
        ])

        ### 2023-3-7:
        ### self.west_lidar_to_enu_quat = np.array([-0.02116055,  0.01760372,  0.35040421,  0.93619401])
        ### self.east_lidar_to_enu_quat = np.array([-0.00575475, -0.00296919,  0.76783602, -0.6406137 ])

        self.east_lidar_to_enu = np.asarray([[
            -1.79161953e-01, 9.83806720e-01, -5.03319364e-03, -1.16202859e+02
        ], [
            -9.83738372e-01, -1.79210556e-01, -1.19328459e-02, -1.52014509e+02
        ], [
            -1.26416154e-02, 2.81343373e-03, 9.99916134e-01, -4.49053239e+00
        ], [0.00000000e+00, 0.00000000e+00, 0.00000000e+00, 1.00000000e+00]])

    def run(self):
        self.subscriber1 = message_filters.Subscriber(self.sub_topic1,
                                                      self.sub_type1)
        self.subscriber2 = message_filters.Subscriber(self.sub_topic2,
                                                      self.sub_type2)
        ts = message_filters.TimeSynchronizer(
            [self.subscriber1, self.subscriber2], 10)
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
        #得到的结果是Object[]，也就是Objects类型的
        self.obj = self.fusion_detection(det_list1=self.obj_list1,
                                         det_list2=self.obj_list2)
        #然后直接将融合后的数据发送出去（先保持原始的格式试试）
        rsPerceptionMsg = RsPerceptionMsg()
        rsPerceptionMsg.lidarframe = msg_data1.lidarframe
        rsPerceptionMsg.lidarframe.objects.objects = self.obj  #将检测结果修改为融合后的部分，其余的部分与 lidar 1 保持一直
        #设备id应该是不需要了（只是为了保持数据的完整性能够发出去）
        rsPerceptionMsg.device_id = 0
        self.publisher.publish(rsPerceptionMsg)

    def fusion_detection(self, det_list1, det_list2, timestamp1, timestamp2):

        # 第一步，将二者都变换到enu 坐标系
        det_list1 = self.toenu(det_list1, self.west_lidar_to_enu)
        det_list2 = self.toenu(det_list2, self.east_lidar_to_enu)
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
            dist.append[distobj1]
        return dist


if __name__ == "__main__":
    rospy.init_node("fusion_detection_result")
    msgTrans = MsgTrans(sub_topic1='',
                        sub_topic2='',
                        pub_topic1='',
                        pub_topic2='')
    msgTrans.run()
    rospy.spin()