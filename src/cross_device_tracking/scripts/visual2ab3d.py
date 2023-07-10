'''
Author: zwhy wa22201149@stu.ahu.edu.cn
Date: 2023-07-10 15:55:00
LastEditors: zwhy wa22201149@stu.ahu.edu.cn
LastEditTime: 2023-07-10 16:17:06
FilePath: /cross_device_track/src/cross_device_tracking/scripts/visual2ab3d.py
Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
'''
import rospy
from all_msgs.msg import Objects
from all_msgs.msg import RsPerceptionMsg
from jsk_recognition_msgs.msg import BoundingBox, BoundingBoxArray
from visualization_msgs.msg import Marker,MarkerArray
class Visual:
    def __init__(self,sub_topic='',pub_topic='',sub_type=RsPerceptionMsg,pub_type=RsPerceptionMsg) -> None:
        self.sub_topic = sub_topic; self.pub_topic = pub_topic
        self.sub_type = sub_type; self.pub_type = pub_type

    def run(self):
        self.subscriber = rospy.Subscriber(self.sub_topic, self.sub_type, self.callback)
        self.publisher = rospy.Publisher(self.pub_topic, self.pub_type,queue_size=10)

    def callback(self):
        pass
        
		