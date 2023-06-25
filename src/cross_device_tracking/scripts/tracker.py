#! /usr/bin/env python
'''
Author: zwhy wa22201149@stu.ahu.edu.cn
Date: 2023-05-24 16:42:00
LastEditors: zwhy wa22201149@stu.ahu.edu.cn
LastEditTime: 2023-06-20 20:08:53
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
                 max_age,
                 sub_topic='/fusion_detection',
                 sub_type=RsPerceptionMsg,
                 pub_topic='/track_result',
                 pub_type=RsPerceptionMsg):
        self.count = 0  # 第几帧
        self.sub_topic = sub_topic
        self.sub_type = sub_type
        self.pub_topic = pub_topic
        self.pub_type = pub_type
        self.first_frame = True  # 标记是否是第一帧
        self.id_count = 0  # id 计数
        self.last_time_stamp = 0  # 上一帧的时间
        self.lastTracks = []  #上一帧追踪保留的物体
        self.lastLabel = []  # 上一帧保留物体的类别
        self.lastCt = []  # 上一帧保留物体的位置 (x,y)
        self.max_age = max_age
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
        self.lastTracks = []  #上一帧追踪保留的物体
        self.lastLabel = []  # 上一帧保留物体的类别
        self.lastCt = []  # 上一帧保留物体的位置 (x,y)
        self.first_frame = True  # 标记是否是第一帧

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
        # 暂存当前帧物体属性
        ct = []
        tracking = []
        label_preds = []
        #当前帧没有数据,则直接返回结果
        if len(det_list) == 0:
            self.lastTracks = []
            self.lastCt = []
            self.lastLabel = []
            return []
        else:
            #存放要删除的索引
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
                object_ct = np.array([
                    det_list[i].coreinfo.center.x.data,
                    det_list[i].coreinfo.center.y.data
                ])
                #计算两帧之间运动的距离  v * t
                object_tracking = np.array([
                    det_list[i].coreinfo.velocity.x.data,
                    det_list[i].coreinfo.velocity.y.data
                ]) * -1 * time_lag
                object_label_preds = type
                # print("label_pred = {0}".format(label_preds))
                ct.append(object_ct)
                tracking.append(object_tracking)
                label_preds.append(object_label_preds)
            # 翻转列表，从后往前删除
            del_index.reverse()
            for i in del_index:
                det_list.pop(i)
        # for ct in tempCt:
        #     print("x = {0}, y = {1}".format(ct[0], ct[1]))
        # print()
        # for t in tempTracking:
        #     print("x = {0}, y = {1}".format(t[0], t[1]))
        # print()
        # for label in tempLabel:
        #     print("label = {0}".format(label))
        N = len(det_list)  # 当前帧物体的个数
        M = len(self.lastTracks)  # 上一帧物体的个数
        # 从当前帧减掉 v * t 的时间得到预测的上一帧坐标
        dets = np.array([ct[i] + tracking[i] for i in range(len(ct))])
        # print()
        # for det in dets:
        #     print("x = {0}, y = {1}".format(det[0], det[1]))
        # for label in tempLabel:
        #     print("label = {0}".format(label))
        max_diff = np.array(
            [CLS_VELOCITY_ERROR[label] for label in label_preds], np.float32)
        tracks = np.array(self.lastCt, np.float32)
        if len(tracks) > 0:
            dist = (((tracks.reshape(1, -1, 2) -
                      dets.reshape(-1, 1, 2))**2).sum(axis=2))  # N x M
            dist = np.sqrt(dist)  # absolute distance in meter
            # 当前帧的类别
            label_preds_ = np.array([label for label in label_preds])
            # 上一帧的类别
            lastLabel_ = np.array([label for label in self.lastLabel])
            invalid = (
                (dist > max_diff.reshape(N, 1)) +
                (label_preds_.reshape(N, 1) != lastLabel_.reshape(1, M))) > 0

            dist = dist + invalid * 1e18
            matched_indices = self.greedy_assignment(copy.deepcopy(dist))
        else:  # first few frame
            matched_indices = np.array([], np.int32).reshape(-1, 2)
        # 当前帧没有匹配上的index
        # print(dets)
        unmatched_dets = [d for d in range(dets.shape[0]) if not (d in matched_indices[:, 0])]
        # 上一帧没有匹配上的index
        unmatched_tracks = [d for d in range(tracks.shape[0]) if not (d in matched_indices[:, 1])]

        matches = matched_indices
        # print("len(matches) = {0}".format(len(matches)))
        ret = []
        for m in matches:
            track = det_list[m[0]]
            # tracking_id 保持
            track.coreinfo.trakcer_id.data = self.lastTracks[m[1]].coreinfo.trakcer_id.data
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
            track.coreinfo.age.data = 0
            ret.append(track)

        for i in unmatched_tracks:
            track = self.lastTracks[i]
            if track.coreinfo.age.data < self.max_age:
                track.coreinfo.age.data += 1
                object_ct = np.array([track.coreinfo.center.x.data, track.coreinfo.center.y.data])  # 更新位置

                offset = np.array([track.coreinfo.velocity.x.data,track.coreinfo.velocity.y.data]) * time_lag
                track.coreinfo.center.x.data = object_ct[0] + offset[0]
                track.coreinfo.center.y.data = object_ct[1] + offset[1]
                ret.append(track)
                ct.append(np.array([self.lastCt[i][0],self.lastCt[i][1]]))
                label_preds.append(self.lastLabel[i])

        self.lastTracks = ret
        self.lastCt = ct
        self.lastLabel = label_preds
        return ret

    def callback(self, msg_data):
        print(self.count)
        self.count += 1
        det_list = msg_data.lidarframe.objects.objects
        # for obj in det_list:
        #     print("x = {0}, y = {1}, z = {2}".format(
        #         obj.coreinfo.center.x.data, obj.coreinfo.center.y.data,
        #         obj.coreinfo.center.z.data))
        timestamp = msg_data.lidarframe.timestamp.data
        # print("self.first_frame = {0}".format(self.first_frame))
        if (self.first_frame):
            self.first_frame = False
            # 第一帧数据，重置追踪器
            # self.reset()
            time_lag = 0
            self.last_time_stamp = timestamp
        else:
            time_lag = timestamp - self.last_time_stamp  # 当前帧与上一帧的时间差
            self.last_time_stamp = timestamp
        # print("进入追踪callback")
        track_result = self.step_centertrack(det_list, time_lag)
        rsPerceptionMsg = RsPerceptionMsg()
        rsPerceptionMsg.lidarframe = msg_data.lidarframe
        rsPerceptionMsg.lidarframe.objects.objects = track_result  #将检测结果修改为融合后的部分，其余的部分与 lidar 1 保持一直
        self.publisher.publish(rsPerceptionMsg)


if __name__ == '__main__':
    rospy.init_node("track")
    track = Track(10)
    track.run()
    rospy.spin()