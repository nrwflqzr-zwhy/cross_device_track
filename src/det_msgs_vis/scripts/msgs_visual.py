#! /usr/bin/env python
import numpy as np
import rospy
import math
from sensor_msgs.msg import PointCloud2, PointField, Image, CompressedImage
from sensor_msgs import point_cloud2

from all_msgs.msg import RsPerceptionMsg
from autoware_msgs.msg import DetectedObjectArray as DetectedObjectArrayAutoware
from autoware_msgs.msg import DetectedObject as DetectedObjectAutoware


def get_quaternion_from_euler(roll=0, pitch=0, yaw=0):
    """
    Convert an Euler angle to a quaternion.

    Input
        :param roll: The roll (rotation around x-axis) angle in radians.
        :param pitch: The pitch (rotation around y-axis) angle in radians.
        :param yaw: The yaw (rotation around z-axis) angle in radians.

    Output
        :return qx, qy, qz, qw: The orientation in quaternion [x,y,z,w] format
    """
    qx = np.sin(roll / 2) * np.cos(pitch / 2) * np.cos(yaw / 2) - np.cos(
        roll / 2) * np.sin(pitch / 2) * np.sin(yaw / 2)
    qy = np.cos(roll / 2) * np.sin(pitch / 2) * np.cos(yaw / 2) + np.sin(
        roll / 2) * np.cos(pitch / 2) * np.sin(yaw / 2)
    qz = np.cos(roll / 2) * np.cos(pitch / 2) * np.sin(yaw / 2) - np.sin(
        roll / 2) * np.sin(pitch / 2) * np.cos(yaw / 2)
    qw = np.cos(roll / 2) * np.cos(pitch / 2) * np.cos(yaw / 2) + np.sin(
        roll / 2) * np.sin(pitch / 2) * np.sin(yaw / 2)

    return [qx, qy, qz, qw]


class Msg_visualizer(object):

    def __init__(self):
        self.subscriber = rospy.Subscriber('/track_result', RsPerceptionMsg,
                                           self.callback)
        self.publisher = rospy.Publisher('/objects',
                                         DetectedObjectArrayAutoware,
                                         queue_size=1)
        self.num_2_label = {
            0: "",
            1: "people",
            2: "cyclist",
            3: "car",
            4: "bus",
            5: "truck",
            6: "unkonw"
        }

        # self.subscriber_lidar = rospy.Subscriber('/rslidar_points', PointCloud2, self.callback_2)
        # self.publisher_lidar = rospy.Publisher('/rslidar_points_baselink', PointCloud2, queue_size=10)

    def callback(self, msg_data):

        msg_array = DetectedObjectArrayAutoware()

        # 消息格式转换
        msg_array.header.stamp.nsecs, msg_array.header.stamp.secs = math.modf(
            msg_data.lidarframe.timestamp.data)
        msg_array.header.stamp.secs = int(msg_array.header.stamp.secs)
        msg_array.header.stamp.nsecs = int(msg_array.header.stamp.nsecs *
                                           1000000000)
        # print("---------------")
        # print(
        #     "msg_array.header.stamp.secs = {0},msg_array.header.stamp.nsecs={1}"
        #     .format(msg_array.header.stamp.secs, msg_array.header.stamp.nsecs))

        # 跟lidar的frame_id保持一致
        msg_array.header.frame_id = msg_data.lidarframe.frame_id.data  # std_msmgs/String 类型的
        # print("msg_array.header.frame_id = {0}".format(
        #     msg_array.header.frame_id))
        for i in range(len(msg_data.lidarframe.objects.objects)):
            # print(' === msg_data \n', msg_data.objects[i])

            obj = DetectedObjectAutoware()
            obj.header.stamp.secs = msg_array.header.stamp.secs
            obj.header.stamp.nsecs = msg_array.header.stamp.nsecs
            # print("****************")
            # print("obj.header.stamp.secs = {0},obj.header.stamp.nsecs={1}".
            #       format(obj.header.stamp.secs, obj.header.stamp.nsecs))

            # 跟lidar的frame_id保持一致
            obj.header.frame_id = msg_array.header.frame_id

            obj.label = self.num_2_label.get(
                msg_data.lidarframe.objects.objects[i].coreinfo.type.data)
            # print('obj.label = {0}'.format(obj.label))
            obj.id = msg_data.lidarframe.objects.objects[
                i].coreinfo.trakcer_id.data

            obj.score = 0.98
            obj.valid = True

            obj.pose.position.x = msg_data.lidarframe.objects.objects[
                i].coreinfo.center.x.data
            obj.pose.position.y = msg_data.lidarframe.objects.objects[
                i].coreinfo.center.y.data
            obj.pose.position.z = msg_data.lidarframe.objects.objects[
                i].coreinfo.center.z.data

            obj.pose_reliable = True
            # 四元数在此处指定  目前是固定的
            obj.pose.orientation.x, obj.pose.orientation.y, obj.pose.orientation.z, obj.pose.orientation.w = get_quaternion_from_euler(
                0, 0, 1.6)
            if obj.label == 'car':
                obj.dimensions.x = 3.0  # h
                obj.dimensions.y = 2.0  # w
                obj.dimensions.z = 1.0  # l # 高度
            elif obj.label == 'people' or obj.label == 'cyclist':
                obj.dimensions.x = 1.0  # h
                obj.dimensions.y = 0.5  # w
                obj.dimensions.z = 1.0  # l

            msg_array.objects.append(obj)
            # print(' === obj \n', msg_array.objects)
        # print("===============")
        self.publisher.publish(msg_array)
        # print('=====', msg_array)

    def callback_2(self, msg_data):
        # 映射消息的frame_id到 /base_link
        # print(' --- msg_data \n', msg_data)
        # print(msg_data.header.frame_id)
        msg_data.header.frame_id = "/base_link"
        self.publisher_lidar.publish(msg_data)


if __name__ == '__main__':
    rospy.init_node('msg_visualizer_node', anonymous=True)
    Msg_visualizer()
    try:
        rospy.spin()
    except KeyboardInterrupt:
        print("Shutting down ROS Image feature detector module")
