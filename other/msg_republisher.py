import time
import numpy as np
import cv2
import os
import sys                                                                                                                                               

import rospy

from coordinate_converter import ENU2GEO

from dt_message_pkg.msg import DetectedObject, DetectedObjectArray

### message type for Robosense LiDAR perception results:
from perception_ros_msg.msg import RsPerceptionMsg

"""
enum class ObjectType {
    UNKNOW = 0,
    PED = 1,
    BIC = 2,
    CAR = 3,
    TRUCK_BUS = 4,
    ULTRA_VEHICLE = 5,
    CONE = 6,
    MAX_OBJ_TYPE_NUM = 7,
};

enum class MotionType {
    UNKNOW = 0,
    MOVING = 1, #### digital twins: moving object, 1
    MOVABLE = 2, 
    STATIONARY = 3 ### digital twins: static object, 2
    MAX_MOTION_STATE_NUM = 4,
};

"""

class MsgPublisher(object):

    def __init__(self, which_lidar = "west",
                       sub_topic = '/percept_topic', sub_type = RsPerceptionMsg,
                       pub_topic = '/detected_object_array', pub_type = DetectedObjectArray,
                       txt_file_path = "/home/ustc/workspace/data_files/apollo_gps_data/trajectory/apollo_moving1.txt"
                ):
        
        self.west_lidar_to_enu = np.asarray([[ 7.53813991e-01, -6.56837663e-01,  1.81315056e-02, -2.97086914e+02],
                                             [ 6.55347646e-01,  7.53538235e-01,  5.19575927e-02, -1.61894522e+02],
                                             [-4.77904866e-02, -2.72839208e-02 , 9.98484680e-01, -2.53851837e+00],
                                             [ 0.00000000e+00,  0.00000000e+00 , 0.00000000e+00,  1.00000000e+00]])
        
        ### 2023-3-7:
        ### self.west_lidar_to_enu_quat = np.array([-0.02116055,  0.01760372,  0.35040421,  0.93619401])
        ### self.east_lidar_to_enu_quat = np.array([-0.00575475, -0.00296919,  0.76783602, -0.6406137 ])

        self.east_lidar_to_enu = np.asarray([[-1.79161953e-01,  9.83806720e-01, -5.03319364e-03, -1.16202859e+02],
                                            [-9.83738372e-01, -1.79210556e-01, -1.19328459e-02, -1.52014509e+02],
                                            [-1.26416154e-02,  2.81343373e-03,  9.99916134e-01, -4.49053239e+00],
                                            [ 0.00000000e+00,  0.00000000e+00 , 0.00000000e+00,  1.00000000e+00]])
        
        self.lidar_to_enu = self.west_lidar_to_enu

        self.frame_id = -1

        self.sub_topic = sub_topic
        self.sub_type = sub_type

        if which_lidar == "east":
            self.lidar_to_enu = self.east_lidar_to_enu

        print(f"Which LiDAR is in use? {which_lidar}")

        self.ref_lon = 117.125737757472
        self.ref_lat = 31.8314435168014
        self.ref_alt = 48.4850078392774

        self.move_thresh = 0.25
        
        self.enu2geo = ENU2GEO()
       
        self.publisher = rospy.Publisher(pub_topic, pub_type, queue_size=10)
       
        self.num_2_type = {"1":"people",  "2":"cyclist", "3":"car", "4":"bus", "5":"truck"}

        #self.num_2_type = {"1":"people01",  "2":"people01", "3":"car01", "4":"car01", "5":"car01"}

        ### load pre-defined trajectory 
        self.lidar_origin_enu_trajectory = self.read_txt(txt_file_path)
        ##rospy.loginfo(f"{self.lidar_origin_enu_trajectory}")

    def run(self):
        self.subscriber = rospy.Subscriber(self.sub_topic, self.sub_type, self.callback)
        rospy.spin()
    
    def get_direction(self, v_list):
        #rospy.loginfo(f"{v_list}")
        v = np.matmul(self.lidar_to_enu, np.asarray(v_list))[0:3]
        theta_abs = np.arccos(np.dot(v[:2], np.array([1,0]))/np.sqrt(v[0]**2+v[1]**2))
        cross_product = np.cross(v, np.array([1,0,0]))
        direction = 0

        if np.dot(cross_product, np.array([0, 0, 1])) < 0:
            direction = int(theta_abs/np.pi*180)
        else:
            direction = 360 - int(theta_abs/np.pi*180)

        return direction

    
    def create_objects(self, time_stamp, n=8):

        lidar_enu = self.lidar_to_enu[:,-1]

        obj_enu_list = np.asarray([ [lidar_enu[0] + 6.0*i, lidar_enu[1], lidar_enu[2]] for i in range(n) ]).T

        obj_gps_list = self.enu2geo.enu_to_geodetic(obj_enu_list[0,:], 
                                                    obj_enu_list[1,:],
                                                    obj_enu_list[2,:],
                                                    self.ref_lon, self.ref_lat, self.ref_alt)
        ##:rospy.loginfo(f"{obj_gps_list}")

        obj_list = []

        for i in range(n):
            obj = DetectedObject()
            obj.objectId = i+1
            obj.position.longitude = obj_gps_list[0][i]
            obj.position.latitude  = obj_gps_list[1][i]
            obj.position.height    = obj_gps_list[2][i]
            obj.category = "car"
            obj.timeStamp = time_stamp
            obj.direction = 90*(i%4)
            obj.state = 1
            obj_list.append(obj)

        return obj_list


    def read_txt(self, txt_path):
        enu_list = []
        with open(txt_path, "r") as fin:
            for line in fin:
                tmp = line.strip("\n").split()
                gps = np.array([[float(tmp[1]), float(tmp[2]), float(tmp[3])]])
                x, y, z = self.enu2geo.geodetic_to_enu(gps[:,0], gps[:,1], gps[:,2],
                                                       self.ref_lon, self.ref_lat, self.ref_alt)
                #enu_list.append([x[0] - self.lidar_to_enu[0,-1], 
                #                 y[0] - self.lidar_to_enu[1,-1],
                #                 z[0] - self.lidar_to_enu[2,-1]])
                enu_list.append([x[0], y[0], z[0]])
        return enu_list


    def create_objects_using_ref_trj(self, ref_trj_list, n, time_stamp, random_delete=False):
        if len(ref_trj_list) <= n or len(ref_trj_list)-2*n-1<50:
            raise ValueError(f"txt trajecotry file is too short! file_length={len(ref_trj_list)} vs n={n}")
        kjump = 4
        Nstep = len(ref_trj_list) - kjump*n - 1
        move = "forward"
        if (self.frame_id // Nstep)%2 > 0:
            move = "backward"
        step = self.frame_id % Nstep

        if move == "forward":
            obj_enu_list = np.asarray([ [ref_trj_list[step+kjump*i][0], 
                                         ref_trj_list[step+kjump*i][1],
                                         ref_trj_list[step+kjump*i][2]] for i in range(n) ]).T
        else:
            obj_enu_list = np.asarray([ [ref_trj_list[Nstep-step+kjump*i][0], 
                                         ref_trj_list[Nstep-step+kjump*i][1],
                                         ref_trj_list[Nstep-step+kjump*i][2]] for i in range(n) ]).T

        obj_gps_list = self.enu2geo.enu_to_geodetic(obj_enu_list[0,:], 
                                                    obj_enu_list[1,:],
                                                    obj_enu_list[2,:],
                                                    self.ref_lon, self.ref_lat, self.ref_alt)
        obj_list = []
        ##random_delete_set = set(np.random.randint(0, 20, 30))
        random_delete_set = set(np.random.randint(0, 15, 10))
       # random_delete_set = set(np.random.randint(0, 50, 30))
        target_types = ["car", "people", "minibus", "cyclist", "truck", "bus"]
        for i in range(n):
            if i in random_delete_set: continue
            obj = DetectedObject()
            obj.objectId = i+1
            obj.position.longitude = round(obj_gps_list[0][i], 7)
            obj.position.latitude  = round(obj_gps_list[1][i], 7)
            obj.position.height    = round(obj_gps_list[2][i], 7)
            obj.category = target_types[i%6]
            obj.timeStamp = time_stamp
            obj.direction = 90*(i%4)
            obj.state = 1
            obj_list.append(obj)

        return obj_list


    def callback(self, msg_data):

        t0 = time.perf_counter()

        self.frame_id += 1

        # extract object list from message data:
        obj_list = msg_data.lidarframe.objects.objects
        ### create objects for publisher:
        pub_msg = DetectedObjectArray()

        ### convert list to ndarray
        obj_coord_list = [[ obj.coreinfo.center.x.data,
                            obj.coreinfo.center.y.data, 
                            obj.coreinfo.center.z.data, 1.0] for obj in obj_list ] 

        obj_dist_list = [ [x**2+y**2] for (x, y, _, _) in obj_coord_list ]

        obj_type_list =  [str(obj.coreinfo.type.data) for obj in obj_list]
        obj_id_list  =    [obj.coreinfo.trakcer_id.data for obj in obj_list]
        obj_velocity_list  = [obj.coreinfo.velocity.x.data**2 + obj.coreinfo.velocity.y.data**2 for obj in obj_list]
        obj_direction_list = [[obj.coreinfo.direction.x.data, obj.coreinfo.direction.y.data, obj.coreinfo.direction.z.data, 0.0] for obj in obj_list]
        #rospy.loginfo(f"{obj_direction_list}")
        timeStamp = msg_data.lidarframe.timestamp.data
       ## rospy.loginfo(f"timeStamp = {timeStamp}")

        if len(obj_id_list) > 0:
            
            obj_coord_list = np.asarray(obj_coord_list).T
            ### coordinate conversion from lidar to enu
            obj_coord_list = np.matmul(self.lidar_to_enu, obj_coord_list)
            ### coordinate conversion from enu to gps
            obj_coord_list = self.enu2geo.enu_to_geodetic(obj_coord_list[0,:], obj_coord_list[1,:], obj_coord_list[2,:],
                                                      self.ref_lon, self.ref_lat, self.ref_alt)
            
            #print(type(obj_coord_list[0]))

            pub_msg.timeStamp = rospy.Time.from_sec(msg_data.lidarframe.timestamp.data)
            pub_msg.objects = []
            
            for i in range(len(obj_id_list)):

                if obj_type_list[i] > "5" or obj_type_list[i] < "1": continue
                #if obj_type_list[i] != "1": continue
    
                obj = DetectedObject()
                obj.objectId = obj_id_list[i]
                obj.position.longitude = round(obj_coord_list[0][i], 7)
                obj.position.latitude  = round(obj_coord_list[1][i], 7)
                obj.position.height    = round(obj_coord_list[2][i], 7)
                obj.category = self.num_2_type[obj_type_list[i]]
                obj.timeStamp = timeStamp
                obj.direction = self.get_direction(obj_direction_list[i])
                ##rospy.loginfo(f"direction = {obj.direction}")
                obj.state = 1 if obj_velocity_list[i] > self.move_thresh else 2
    
               
            ###shortlenth
           # pub_msg.timeStamp = rospy.Time.from_sec(msg_data.lidarframe.timestamp.data)
          #  pub_msg.objects = []

          #  for i in range(len(obj_id_list)):

          #      if obj_type_list[i] > "5" or obj_type_list[i] < "1": continue
          #      #if obj_type_list[i] != "1": continue

          #      obj = DetectedObject()
          #      obj.Id = obj_id_list[i]
          #      obj.pos.long = round(obj_coord_list[0][i], 7)
          #      obj.pos.lat  = round(obj_coord_list[1][i], 7)
          #      obj.pos.high    = round(obj_coord_list[2][i], 7)
          #      obj.cat = self.num_2_type[obj_type_list[i]]
          #      #obj.timeStamp = timeStamp
          #      obj.dir = self.get_direction(obj_direction_list[i])
          #      ##rospy.loginfo(f"direction = {obj.direction}")
          #      obj.sta = 1 if obj_velocity_list[i] > self.move_thresh else 2

                pub_msg.objects.append(obj)


            ###create fake objects for tests
            ###pub_msg.objects = self.create_objects(timeStamp)

            ### create fake objects for tests
            #pub_msg.objects = self.create_objects_using_ref_trj(self.lidar_origin_enu_trajectory, n=200, time_stamp=timeStamp)
            rospy.loginfo(f"Number of targets: {len(pub_msg.objects)}/{len(obj_list)}")
            
        
        self.publisher.publish(pub_msg)

        t1 = time.perf_counter()
        rospy.loginfo(f"time cost: {round(1000*(t1-t0), 3)} ms")
        
        

if __name__=="__main__":
    
    #enu2geo = ENU2GEO()
    #result = enu2geo.enu_to_geodetic(0, 10, 10, 45, 30, 10)
    
    rospy.init_node("msg_republisher")
    msg_publisher = MsgPublisher(which_lidar="west",
                                 sub_topic="/percept_topic",
                                 txt_file_path="/data/data_files/apollo_gps_data/gps_trajectory.txt")
    msg_publisher.run()

