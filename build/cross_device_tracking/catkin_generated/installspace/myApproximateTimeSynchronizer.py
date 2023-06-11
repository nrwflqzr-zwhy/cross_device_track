#!/usr/bin/env python3
'''
Author: zwhy wa22201149@stu.ahu.edu.cn
Date: 2023-06-09 16:55:14
LastEditors: zwhy wa22201149@stu.ahu.edu.cn
LastEditTime: 2023-06-11 14:02:05
FilePath: /cross_device_track/src/cross_device_tracking/scripts/myApproximateTimeSynchronizer.py
Description: 
'''
import itertools
import rospy
import std_msgs
from message_filters import ApproximateTimeSynchronizer


class MyApproximateTimeSynchronizer(ApproximateTimeSynchronizer):

    def __init__(self,
                 fs,
                 queue_size,
                 slop,
                 allow_headerless=False,
                 reset=False):
        super().__init__(fs, queue_size, slop, allow_headerless, reset)

    def add(self, msg, my_queue, my_queue_index=None):
        if not hasattr(msg, 'header') or not hasattr(msg.header, 'stamp'):
            if not self.allow_headerless:
                # print("赋值给当前时间戳 stamp = {0}".format(msg.lidarframe.timestamp))
                stamp = rospy.Time.from_sec(msg.lidarframe.timestamp.data)
            stamp = rospy.Time.from_sec(msg.lidarframe.timestamp.data)
        else:
            stamp = msg.header.stamp

        self.lock.acquire()
        now = rospy.Time.now()
        is_simtime = not rospy.rostime.is_wallclock()
        if is_simtime and self.enable_reset and my_queue_index is not None:
            if now < self.latest_stamps[my_queue_index]:
                rospy.logdebug(
                    "Detected jump back in time. Clearing message filter queue"
                )
                my_queue.clear()
            self.latest_stamps[my_queue_index] = now
        my_queue[stamp] = msg

        # clear all buffers if jump backwards in time is detected
        now = rospy.Time.now()
        if now < self.last_added:
            rospy.loginfo(
                "ApproximateTimeSynchronizer: Detected jump back in time. Clearing buffer."
            )
            for q in self.queues:
                q.clear()
        self.last_added = now

        while len(my_queue) > self.queue_size:
            del my_queue[min(my_queue)]

        if is_simtime and self.enable_reset:
            if max(self.latest_stamps) != now:
                self.lock.release()
                return
        # self.queues = [topic_0 {stamp: msg}, topic_1 {stamp: msg}, ...]
        if my_queue_index is None:
            search_queues = self.queues
        else:
            search_queues = self.queues[:my_queue_index] + \
                self.queues[my_queue_index+1:]
        # sort and leave only reasonable stamps for synchronization
        stamps = []
        for queue in search_queues:
            topic_stamps = []
            for s in queue:
                stamp_delta = abs(s - stamp)
                if stamp_delta > self.slop:
                    continue  # far over the slop
                topic_stamps.append((s, stamp_delta))
            if not topic_stamps:
                self.lock.release()
                return
            topic_stamps = sorted(topic_stamps, key=lambda x: x[1])
            stamps.append(topic_stamps)
        for vv in itertools.product(*[next(iter(zip(*s))) for s in stamps]):
            vv = list(vv)
            # insert the new message
            if my_queue_index is not None:
                vv.insert(my_queue_index, stamp)
            qt = list(zip(self.queues, vv))
            if (((max(vv) - min(vv)) < self.slop)
                    and (len([1 for q, t in qt if t not in q]) == 0)):
                msgs = [q[t] for q, t in qt]
                self.signalMessage(*msgs)
                for q, t in qt:
                    del q[t]
                break  # fast finish after the synchronization
        self.lock.release()