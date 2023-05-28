'''
Author: zwhy wa22201149@stu.ahu.edu.cn
Date: 2023-05-24 16:42:00
LastEditors: zwhy wa22201149@stu.ahu.edu.cn
LastEditTime: 2023-05-24 17:08:01
FilePath: /cross_device_tracking/src/cross_device_tracking/scripts/tracker.py
Description: 
'''
import rospy
from all_msgs.msg import Objects
from all_msgs.msg import RsPerceptionMsg


class Track(object):

    def __init__(self,
                 sub_topic='/fusion_detection',
                 sub_type=RsPerceptionMsg):
        self.sub_topic = sub_topic
        self.sub_type = sub_type

    def run(self):
        self.subscriber = rospy.Subscriber(self.sub_topic, self.sub_type,
                                           self.callback)

    def callback(self, msg_data):
        detection = msg_data.lidarframe.objects.objects
        timestamp = msg_data.lidarframe.timestamp