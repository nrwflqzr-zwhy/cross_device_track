#! /usr/bin/env python
'''
Author: zwhy wa22201149@stu.ahu.edu.cn
Date: 2023-05-24 16:42:00
LastEditors: zwhy wa22201149@stu.ahu.edu.cn
LastEditTime: 2023-06-14 15:36:23
FilePath: /cross_device_track/src/cross_device_tracking/scripts/tracker.py
Description: 
'''

import rospy
import numpy as np
import copy
from all_msgs.msg import Objects
from all_msgs.msg import RsPerceptionMsg

TRACKING_NAMES = ['people', 'cyclist', 'car', 'bus', 'truck']

CLS_VELOCITY_ERROR = {
    'people': 3,
    'cyclist': 3,
    'car': 9,
    'bus': 5.5,
    'truck': 4
}


class Track(object):

    def __init__(self,
                 sub_topic='/fusion_detection',
                 sub_type=RsPerceptionMsg,
                 pub_topic='/track_result',
                 pub_type=RsPerceptionMsg):
        self.sub_topic = sub_topic
        self.sub_type = sub_type
        self.pub_topic = pub_topic
        self.pub_type = pub_type
        self.first_frame = True  # 标记是否是第一帧
        self.id_count = 0  # id 计数
        self.tracks = []  #上一帧追踪保留的物体
        self.last_time_stamp = 0  # 上一帧的时间
        self.label = []  # 上一帧的类别
        self.ct = []  # 上一帧的位置
        self.num_2_label = {
            0: "",
            1: "people",
            2: "cyclist",
            3: "car",
            4: "bus",
            5: "truck",
            6: "unknow"
        }

    def run(self):
        self.subscriber = rospy.Subscriber(self.sub_topic, self.sub_type,
                                           self.callback)
        self.publisher = rospy.Publisher(self.pub_topic,
                                         self.pub_type,
                                         queue_size=10)
        self.reset()

    # 重置追踪器
    def reset(self):
        self.id_count = 0
        self.tracks = []

    def greedy_assignment(self, dist):
        matched_indices = []
        if dist.shape[1] == 0:  # 这是第一帧
            return np.array(matched_indices, np.int32).reshape(-1, 2)

        for i in range(dist.shape[0]):
            j = dist[i].argmin()
            if dist[i][j] < 1e16:  # ？ 这里没问题吗 ？  对的 没问题
                dist[:, j] = 1e18
                matched_indices.append([i, j])  # 当前的第i个物体与上一帧第j个物体匹配到
        return np.array(matched_indices, np.int32).reshape(-1, 2)

    def step_centertrack(self, det_list, time_lag):
        tempCt = []
        tempTracking = []
        tempLabel = []
        if len(det_list) == 0:
            self.tracks = []
            return []
        else:
            del_index = []
            for i in range(len(det_list)):
                # print("det_list[{0}].coreinfo.type.data = {1}".format(
                #     i, det_list[i].coreinfo.type.data))
                type = self.num_2_label.get(det_list[i].coreinfo.type.data)
                # print("type = {0}".format(type))
                if type not in TRACKING_NAMES:
                    # 这里直接删除是否会影响 i 的取值（解决方法应该是先记录索引，跳出for之后再删除）
                    del_index.append(i)
                    continue
                ct = np.array([
                    det_list[i].coreinfo.center.x.data,
                    det_list[i].coreinfo.center.y.data
                ])
                #计算两帧之间运动的距离  v * t
                tracking = np.array([
                    det_list[i].coreinfo.velocity.x.data,
                    det_list[i].coreinfo.velocity.y.data
                ]) * -1 * time_lag
                label_preds = type
                # print("label_pred = {0}".format(label_preds))
                tempCt.append(ct)
                tempTracking.append(tracking)
                tempLabel.append(label_preds)
            for i in del_index:
                del det_list[i]
        # for ct in tempCt:
        #     print("x = {0}, y = {1}".format(ct[0], ct[1]))
        # print()
        # for t in tempTracking:
        #     print("x = {0}, y = {1}".format(t[0], t[1]))
        # print()
        # for label in tempLabel:
        #     print("label = {0}".format(label))
        N = len(det_list)  # 当前帧物体的个数
        M = len(self.tracks)  # 上一帧物体的个数
        # 从当前帧减掉 v * t 的时间得到预测的上一帧坐标
        dets = np.array(
            [tempCt[i] + tempTracking[i] for i in range(len(tempCt))])
        # print()
        # for det in dets:
        #     print("x = {0}, y = {1}".format(det[0], det[1]))
        # for label in tempLabel:
        #     print("label = {0}".format(label))
        max_diff = np.array([CLS_VELOCITY_ERROR[label] for label in tempLabel],
                            np.float32)
        tracks = np.array(self.ct, np.float32)
        if len(tracks) > 0:
            dist = (((tracks.reshape(1, -1, 2) -
                      dets.reshape(-1, 1, 2))**2).sum(axis=2))  # N x M
            dist = np.sqrt(dist)  # absolute distance in meter

            invalid = (
                (dist > max_diff.reshape(N, 1)) +
                (tempLabel.reshape(N, 1) != self.label.reshape(1, M))) > 0

            dist = dist + invalid * 1e18
            matched_indices = self.greedy_assignment(copy.deepcopy(dist))
        else:  # first few frame
            matched_indices = np.array([], np.int32).reshape(-1, 2)
        # 当前帧没有匹配上的index
        # print(dets)
        unmatched_dets = [
            d for d in range(dets.shape[0]) if not (d in matched_indices[:, 0])
        ]
        # 上一帧没有匹配上的index
        unmatched_tracks = [
            d for d in range(tracks.shape[0])
            if not (d in matched_indices[:, 1])
        ]

        matches = matched_indices

        ret = []
        for m in matches:
            track = det_list[m[0]]
            track.coreinfo.trakcer_id.data = self.tracks[
                m[1]].coreinfo.trakcer_id.data  # tracking_id 保持
            # if track.tracking_id == 10:
            #    print("物体的位置x:{0},y:{1}".format(track.ct[0],track.ct[1]))
            #    print("物体的速度x:{0},y:{1}".format(det.velocity.x.data,det.velocity.y.data))
            track.coreinfo.age.data = 0  # 论文上为0
            ret.append(track)

        for i in unmatched_dets:
            track = det_list[i]
            self.id_count += 1
            track.coreinfo.trakcer_id.data = self.id_count  # 给一个新的 tracking_id
            # if track.tracking_id == 10:
            #    print("物体的位置x:{0},y:{1}".format(track.ct[0],track.ct[1]))
            #    print("物体的速度x:{0},y:{1}".format(det.velocity.x.data,det.velocity.y.data))
            track.coreinfo.age.data = 1
            ret.append(track)

        # still store unmatched tracks if its age doesn't exceed max_age, however, we shouldn't output
        # the object in current frame
        for i in unmatched_tracks:
            track = self.tracks[i]
            if track.coreinfo.age.data < self.max_age:
                track.coreinfo.age.data += 1
                ct = [
                    track.coreinfo.center.x.data, track.coreinfo.center.y.data
                ]  # 更新位置

                # movement in the last second

                offset = [
                    track.coreinfo.velocity.x.data,
                    track.coreinfo.velocity.y.data
                ] * time_lag
                track.coreinfo.center.x.data = ct[0] + offset[0]
                track.coreinfo.center.y.data = ct[1] + offset[1]
                ret.append(track)
            # if track.tracking_id == 10:
            #    print("物体的位置x:{0},y:{1}".format(track.ct[0],track.ct[1]))
            #    print("物体的速度x:{0},y:{1}".format(det.velocity.x.data,det.velocity.y.data))
        self.tracks = ret
        return ret

    def callback(self, msg_data):
        det_list = msg_data.lidarframe.objects.objects
        # for obj in det_list:
        #     print("x = {0}, y = {1}, z = {2}".format(
        #         obj.coreinfo.center.x.data, obj.coreinfo.center.y.data,
        #         obj.coreinfo.center.z.data))
        timestamp = msg_data.lidarframe.timestamp.data
        if (self.first_frame):
            self.first_frame = False
            # 第一帧数据，重置追踪器
            self.reset()
            time_lag = 0
            self.last_time_stamp = timestamp
        else:
            time_lag = timestamp - self.last_time_stamp  # 当前帧与上一帧的时间差
            self.last_time_stamp = timestamp

        track_result = self.step_centertrack(det_list, time_lag)
        rsPerceptionMsg = RsPerceptionMsg()
        rsPerceptionMsg.lidarframe = msg_data.lidarframe
        rsPerceptionMsg.lidarframe.objects.objects = track_result  #将检测结果修改为融合后的部分，其余的部分与 lidar 1 保持一直
        self.publisher.publish(rsPerceptionMsg)


if __name__ == '__main__':
    rospy.init_node("track")
    track = Track()
    track.run()
    rospy.spin()