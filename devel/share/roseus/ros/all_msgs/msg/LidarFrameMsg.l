;; Auto-generated. Do not edit!


(when (boundp 'all_msgs::LidarFrameMsg)
  (if (not (find-package "ALL_MSGS"))
    (make-package "ALL_MSGS"))
  (shadow 'LidarFrameMsg (find-package "ALL_MSGS")))
(unless (find-package "ALL_MSGS::LIDARFRAMEMSG")
  (make-package "ALL_MSGS::LIDARFRAMEMSG"))

(in-package "ROS")
;;//! \htmlinclude LidarFrameMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass all_msgs::LidarFrameMsg
  :super ros::object
  :slots (_frame_id _timestamp _global_pose _gps_origin _status_pose_map _status _valid_indices _objects _has_pointcloud _scan_pointcloud _has_attention_objects _attention_objects _has_freespace _freespace_infos _has_lanes _lanes _has_roadedges _roadedges _has_sematice_indices _non_ground_indices _ground_indices _background_indices ))

(defmethod all_msgs::LidarFrameMsg
  (:init
   (&key
    ((:frame_id __frame_id) (instance std_msgs::String :init))
    ((:timestamp __timestamp) (instance std_msgs::Float64 :init))
    ((:global_pose __global_pose) (instance all_msgs::Pose :init))
    ((:gps_origin __gps_origin) (instance all_msgs::Point3d :init))
    ((:status_pose_map __status_pose_map) (instance all_msgs::PoseMap :init))
    ((:status __status) (instance std_msgs::Int32 :init))
    ((:valid_indices __valid_indices) (instance all_msgs::Indices :init))
    ((:objects __objects) (instance all_msgs::Objects :init))
    ((:has_pointcloud __has_pointcloud) (instance std_msgs::Bool :init))
    ((:scan_pointcloud __scan_pointcloud) ())
    ((:has_attention_objects __has_attention_objects) (instance std_msgs::Bool :init))
    ((:attention_objects __attention_objects) (instance all_msgs::Objects :init))
    ((:has_freespace __has_freespace) (instance std_msgs::Bool :init))
    ((:freespace_infos __freespace_infos) (instance all_msgs::FreeSpaceInfos :init))
    ((:has_lanes __has_lanes) (instance std_msgs::Bool :init))
    ((:lanes __lanes) (instance all_msgs::Lanes :init))
    ((:has_roadedges __has_roadedges) (instance std_msgs::Bool :init))
    ((:roadedges __roadedges) (instance all_msgs::RoadEdges :init))
    ((:has_sematice_indices __has_sematice_indices) (instance std_msgs::Bool :init))
    ((:non_ground_indices __non_ground_indices) (instance all_msgs::Indices :init))
    ((:ground_indices __ground_indices) (instance all_msgs::Indices :init))
    ((:background_indices __background_indices) (instance all_msgs::Indices :init))
    )
   (send-super :init)
   (setq _frame_id __frame_id)
   (setq _timestamp __timestamp)
   (setq _global_pose __global_pose)
   (setq _gps_origin __gps_origin)
   (setq _status_pose_map __status_pose_map)
   (setq _status __status)
   (setq _valid_indices __valid_indices)
   (setq _objects __objects)
   (setq _has_pointcloud __has_pointcloud)
   (setq _scan_pointcloud __scan_pointcloud)
   (setq _has_attention_objects __has_attention_objects)
   (setq _attention_objects __attention_objects)
   (setq _has_freespace __has_freespace)
   (setq _freespace_infos __freespace_infos)
   (setq _has_lanes __has_lanes)
   (setq _lanes __lanes)
   (setq _has_roadedges __has_roadedges)
   (setq _roadedges __roadedges)
   (setq _has_sematice_indices __has_sematice_indices)
   (setq _non_ground_indices __non_ground_indices)
   (setq _ground_indices __ground_indices)
   (setq _background_indices __background_indices)
   self)
  (:frame_id
   (&rest __frame_id)
   (if (keywordp (car __frame_id))
       (send* _frame_id __frame_id)
     (progn
       (if __frame_id (setq _frame_id (car __frame_id)))
       _frame_id)))
  (:timestamp
   (&rest __timestamp)
   (if (keywordp (car __timestamp))
       (send* _timestamp __timestamp)
     (progn
       (if __timestamp (setq _timestamp (car __timestamp)))
       _timestamp)))
  (:global_pose
   (&rest __global_pose)
   (if (keywordp (car __global_pose))
       (send* _global_pose __global_pose)
     (progn
       (if __global_pose (setq _global_pose (car __global_pose)))
       _global_pose)))
  (:gps_origin
   (&rest __gps_origin)
   (if (keywordp (car __gps_origin))
       (send* _gps_origin __gps_origin)
     (progn
       (if __gps_origin (setq _gps_origin (car __gps_origin)))
       _gps_origin)))
  (:status_pose_map
   (&rest __status_pose_map)
   (if (keywordp (car __status_pose_map))
       (send* _status_pose_map __status_pose_map)
     (progn
       (if __status_pose_map (setq _status_pose_map (car __status_pose_map)))
       _status_pose_map)))
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:valid_indices
   (&rest __valid_indices)
   (if (keywordp (car __valid_indices))
       (send* _valid_indices __valid_indices)
     (progn
       (if __valid_indices (setq _valid_indices (car __valid_indices)))
       _valid_indices)))
  (:objects
   (&rest __objects)
   (if (keywordp (car __objects))
       (send* _objects __objects)
     (progn
       (if __objects (setq _objects (car __objects)))
       _objects)))
  (:has_pointcloud
   (&rest __has_pointcloud)
   (if (keywordp (car __has_pointcloud))
       (send* _has_pointcloud __has_pointcloud)
     (progn
       (if __has_pointcloud (setq _has_pointcloud (car __has_pointcloud)))
       _has_pointcloud)))
  (:scan_pointcloud
   (&rest __scan_pointcloud)
   (if (keywordp (car __scan_pointcloud))
       (send* _scan_pointcloud __scan_pointcloud)
     (progn
       (if __scan_pointcloud (setq _scan_pointcloud (car __scan_pointcloud)))
       _scan_pointcloud)))
  (:has_attention_objects
   (&rest __has_attention_objects)
   (if (keywordp (car __has_attention_objects))
       (send* _has_attention_objects __has_attention_objects)
     (progn
       (if __has_attention_objects (setq _has_attention_objects (car __has_attention_objects)))
       _has_attention_objects)))
  (:attention_objects
   (&rest __attention_objects)
   (if (keywordp (car __attention_objects))
       (send* _attention_objects __attention_objects)
     (progn
       (if __attention_objects (setq _attention_objects (car __attention_objects)))
       _attention_objects)))
  (:has_freespace
   (&rest __has_freespace)
   (if (keywordp (car __has_freespace))
       (send* _has_freespace __has_freespace)
     (progn
       (if __has_freespace (setq _has_freespace (car __has_freespace)))
       _has_freespace)))
  (:freespace_infos
   (&rest __freespace_infos)
   (if (keywordp (car __freespace_infos))
       (send* _freespace_infos __freespace_infos)
     (progn
       (if __freespace_infos (setq _freespace_infos (car __freespace_infos)))
       _freespace_infos)))
  (:has_lanes
   (&rest __has_lanes)
   (if (keywordp (car __has_lanes))
       (send* _has_lanes __has_lanes)
     (progn
       (if __has_lanes (setq _has_lanes (car __has_lanes)))
       _has_lanes)))
  (:lanes
   (&rest __lanes)
   (if (keywordp (car __lanes))
       (send* _lanes __lanes)
     (progn
       (if __lanes (setq _lanes (car __lanes)))
       _lanes)))
  (:has_roadedges
   (&rest __has_roadedges)
   (if (keywordp (car __has_roadedges))
       (send* _has_roadedges __has_roadedges)
     (progn
       (if __has_roadedges (setq _has_roadedges (car __has_roadedges)))
       _has_roadedges)))
  (:roadedges
   (&rest __roadedges)
   (if (keywordp (car __roadedges))
       (send* _roadedges __roadedges)
     (progn
       (if __roadedges (setq _roadedges (car __roadedges)))
       _roadedges)))
  (:has_sematice_indices
   (&rest __has_sematice_indices)
   (if (keywordp (car __has_sematice_indices))
       (send* _has_sematice_indices __has_sematice_indices)
     (progn
       (if __has_sematice_indices (setq _has_sematice_indices (car __has_sematice_indices)))
       _has_sematice_indices)))
  (:non_ground_indices
   (&rest __non_ground_indices)
   (if (keywordp (car __non_ground_indices))
       (send* _non_ground_indices __non_ground_indices)
     (progn
       (if __non_ground_indices (setq _non_ground_indices (car __non_ground_indices)))
       _non_ground_indices)))
  (:ground_indices
   (&rest __ground_indices)
   (if (keywordp (car __ground_indices))
       (send* _ground_indices __ground_indices)
     (progn
       (if __ground_indices (setq _ground_indices (car __ground_indices)))
       _ground_indices)))
  (:background_indices
   (&rest __background_indices)
   (if (keywordp (car __background_indices))
       (send* _background_indices __background_indices)
     (progn
       (if __background_indices (setq _background_indices (car __background_indices)))
       _background_indices)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _frame_id
    (send _frame_id :serialization-length)
    ;; std_msgs/Float64 _timestamp
    (send _timestamp :serialization-length)
    ;; all_msgs/Pose _global_pose
    (send _global_pose :serialization-length)
    ;; all_msgs/Point3d _gps_origin
    (send _gps_origin :serialization-length)
    ;; all_msgs/PoseMap _status_pose_map
    (send _status_pose_map :serialization-length)
    ;; std_msgs/Int32 _status
    (send _status :serialization-length)
    ;; all_msgs/Indices _valid_indices
    (send _valid_indices :serialization-length)
    ;; all_msgs/Objects _objects
    (send _objects :serialization-length)
    ;; std_msgs/Bool _has_pointcloud
    (send _has_pointcloud :serialization-length)
    ;; all_msgs/Point4f[] _scan_pointcloud
    (apply #'+ (send-all _scan_pointcloud :serialization-length)) 4
    ;; std_msgs/Bool _has_attention_objects
    (send _has_attention_objects :serialization-length)
    ;; all_msgs/Objects _attention_objects
    (send _attention_objects :serialization-length)
    ;; std_msgs/Bool _has_freespace
    (send _has_freespace :serialization-length)
    ;; all_msgs/FreeSpaceInfos _freespace_infos
    (send _freespace_infos :serialization-length)
    ;; std_msgs/Bool _has_lanes
    (send _has_lanes :serialization-length)
    ;; all_msgs/Lanes _lanes
    (send _lanes :serialization-length)
    ;; std_msgs/Bool _has_roadedges
    (send _has_roadedges :serialization-length)
    ;; all_msgs/RoadEdges _roadedges
    (send _roadedges :serialization-length)
    ;; std_msgs/Bool _has_sematice_indices
    (send _has_sematice_indices :serialization-length)
    ;; all_msgs/Indices _non_ground_indices
    (send _non_ground_indices :serialization-length)
    ;; all_msgs/Indices _ground_indices
    (send _ground_indices :serialization-length)
    ;; all_msgs/Indices _background_indices
    (send _background_indices :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _frame_id
       (send _frame_id :serialize s)
     ;; std_msgs/Float64 _timestamp
       (send _timestamp :serialize s)
     ;; all_msgs/Pose _global_pose
       (send _global_pose :serialize s)
     ;; all_msgs/Point3d _gps_origin
       (send _gps_origin :serialize s)
     ;; all_msgs/PoseMap _status_pose_map
       (send _status_pose_map :serialize s)
     ;; std_msgs/Int32 _status
       (send _status :serialize s)
     ;; all_msgs/Indices _valid_indices
       (send _valid_indices :serialize s)
     ;; all_msgs/Objects _objects
       (send _objects :serialize s)
     ;; std_msgs/Bool _has_pointcloud
       (send _has_pointcloud :serialize s)
     ;; all_msgs/Point4f[] _scan_pointcloud
     (write-long (length _scan_pointcloud) s)
     (dolist (elem _scan_pointcloud)
       (send elem :serialize s)
       )
     ;; std_msgs/Bool _has_attention_objects
       (send _has_attention_objects :serialize s)
     ;; all_msgs/Objects _attention_objects
       (send _attention_objects :serialize s)
     ;; std_msgs/Bool _has_freespace
       (send _has_freespace :serialize s)
     ;; all_msgs/FreeSpaceInfos _freespace_infos
       (send _freespace_infos :serialize s)
     ;; std_msgs/Bool _has_lanes
       (send _has_lanes :serialize s)
     ;; all_msgs/Lanes _lanes
       (send _lanes :serialize s)
     ;; std_msgs/Bool _has_roadedges
       (send _has_roadedges :serialize s)
     ;; all_msgs/RoadEdges _roadedges
       (send _roadedges :serialize s)
     ;; std_msgs/Bool _has_sematice_indices
       (send _has_sematice_indices :serialize s)
     ;; all_msgs/Indices _non_ground_indices
       (send _non_ground_indices :serialize s)
     ;; all_msgs/Indices _ground_indices
       (send _ground_indices :serialize s)
     ;; all_msgs/Indices _background_indices
       (send _background_indices :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _frame_id
     (send _frame_id :deserialize buf ptr-) (incf ptr- (send _frame_id :serialization-length))
   ;; std_msgs/Float64 _timestamp
     (send _timestamp :deserialize buf ptr-) (incf ptr- (send _timestamp :serialization-length))
   ;; all_msgs/Pose _global_pose
     (send _global_pose :deserialize buf ptr-) (incf ptr- (send _global_pose :serialization-length))
   ;; all_msgs/Point3d _gps_origin
     (send _gps_origin :deserialize buf ptr-) (incf ptr- (send _gps_origin :serialization-length))
   ;; all_msgs/PoseMap _status_pose_map
     (send _status_pose_map :deserialize buf ptr-) (incf ptr- (send _status_pose_map :serialization-length))
   ;; std_msgs/Int32 _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;; all_msgs/Indices _valid_indices
     (send _valid_indices :deserialize buf ptr-) (incf ptr- (send _valid_indices :serialization-length))
   ;; all_msgs/Objects _objects
     (send _objects :deserialize buf ptr-) (incf ptr- (send _objects :serialization-length))
   ;; std_msgs/Bool _has_pointcloud
     (send _has_pointcloud :deserialize buf ptr-) (incf ptr- (send _has_pointcloud :serialization-length))
   ;; all_msgs/Point4f[] _scan_pointcloud
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _scan_pointcloud (let (r) (dotimes (i n) (push (instance all_msgs::Point4f :init) r)) r))
     (dolist (elem- _scan_pointcloud)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; std_msgs/Bool _has_attention_objects
     (send _has_attention_objects :deserialize buf ptr-) (incf ptr- (send _has_attention_objects :serialization-length))
   ;; all_msgs/Objects _attention_objects
     (send _attention_objects :deserialize buf ptr-) (incf ptr- (send _attention_objects :serialization-length))
   ;; std_msgs/Bool _has_freespace
     (send _has_freespace :deserialize buf ptr-) (incf ptr- (send _has_freespace :serialization-length))
   ;; all_msgs/FreeSpaceInfos _freespace_infos
     (send _freespace_infos :deserialize buf ptr-) (incf ptr- (send _freespace_infos :serialization-length))
   ;; std_msgs/Bool _has_lanes
     (send _has_lanes :deserialize buf ptr-) (incf ptr- (send _has_lanes :serialization-length))
   ;; all_msgs/Lanes _lanes
     (send _lanes :deserialize buf ptr-) (incf ptr- (send _lanes :serialization-length))
   ;; std_msgs/Bool _has_roadedges
     (send _has_roadedges :deserialize buf ptr-) (incf ptr- (send _has_roadedges :serialization-length))
   ;; all_msgs/RoadEdges _roadedges
     (send _roadedges :deserialize buf ptr-) (incf ptr- (send _roadedges :serialization-length))
   ;; std_msgs/Bool _has_sematice_indices
     (send _has_sematice_indices :deserialize buf ptr-) (incf ptr- (send _has_sematice_indices :serialization-length))
   ;; all_msgs/Indices _non_ground_indices
     (send _non_ground_indices :deserialize buf ptr-) (incf ptr- (send _non_ground_indices :serialization-length))
   ;; all_msgs/Indices _ground_indices
     (send _ground_indices :deserialize buf ptr-) (incf ptr- (send _ground_indices :serialization-length))
   ;; all_msgs/Indices _background_indices
     (send _background_indices :deserialize buf ptr-) (incf ptr- (send _background_indices :serialization-length))
   ;;
   self)
  )

(setf (get all_msgs::LidarFrameMsg :md5sum-) "caa4cd6acb7dc86f4a76180c583c5946")
(setf (get all_msgs::LidarFrameMsg :datatype-) "all_msgs/LidarFrameMsg")
(setf (get all_msgs::LidarFrameMsg :definition-)
      "std_msgs/String frame_id
std_msgs/Float64 timestamp 
Pose             global_pose 
Point3d          gps_origin 
PoseMap          status_pose_map 
std_msgs/Int32   status 
Indices          valid_indices 
Objects          objects 

std_msgs/Bool  has_pointcloud 
Point4f[]      scan_pointcloud 

std_msgs/Bool  has_attention_objects 
Objects        attention_objects 

std_msgs/Bool  has_freespace 
FreeSpaceInfos freespace_infos 

std_msgs/Bool   has_lanes 
Lanes           lanes 

std_msgs/Bool   has_roadedges 
RoadEdges       roadedges 

std_msgs/Bool   has_sematice_indices 
Indices         non_ground_indices
Indices         ground_indices 
Indices         background_indices 

================================================================================
MSG: std_msgs/String
string data

================================================================================
MSG: std_msgs/Float64
float64 data
================================================================================
MSG: all_msgs/Pose
std_msgs/Float32 x 
std_msgs/Float32 y 
std_msgs/Float32 z 

std_msgs/Float32 roll 
std_msgs/Float32 pitch
std_msgs/Float32 yaw

std_msgs/Int32 status 

================================================================================
MSG: std_msgs/Float32
float32 data
================================================================================
MSG: std_msgs/Int32
int32 data
================================================================================
MSG: all_msgs/Point3d
std_msgs/Float64 x 
std_msgs/Float64 y 
std_msgs/Float64 z 

================================================================================
MSG: all_msgs/PoseMap
AxisStatusPose[] status_poses 

================================================================================
MSG: all_msgs/AxisStatusPose
std_msgs/Int32 status 
Pose           pose 
================================================================================
MSG: all_msgs/Indices
std_msgs/Int32[]    indices
================================================================================
MSG: all_msgs/Objects
Object[]         objects
================================================================================
MSG: all_msgs/Object
CoreInfo coreinfo
std_msgs/Bool  hassupplmentinfo 
SupplementInfo supplementinfo 

================================================================================
MSG: all_msgs/CoreInfo
std_msgs/Float64 timestamp

std_msgs/Int32 priority_id
std_msgs/Float32 exist_confidence 
Point3f          center 
Point3f          center_cov 
Point3f          size 
Point3f          size_cov 
Point3f          direction 
Point3f          direction_cov         
std_msgs/Int32   type 
std_msgs/Float32 type_confidence 
std_msgs/Int32   attention_type 
std_msgs/Int32   motion_state
std_msgs/Int32   lane_pos
std_msgs/Int32   trakcer_id 
std_msgs/Float64 age 
Point3f          velocity 
Point3f          velocity_cov 
Point3f          acceleration 
Point3f          acceleration_cov 
std_msgs/Float32 angle_velocity 
std_msgs/Float32 angle_velocity_cov 
std_msgs/Float32 angle_acceleration 
std_msgs/Float32 angle_acceleration_cov  
Point3f          anchor 
Point3f          nearest_point 


================================================================================
MSG: all_msgs/Point3f
std_msgs/Float32 x 
std_msgs/Float32 y 
std_msgs/Float32 z 
================================================================================
MSG: std_msgs/Bool
bool data
================================================================================
MSG: all_msgs/SupplementInfo
std_msgs/UInt32     unique_id

Point3f[]           polygon
std_msgs/Int32      left_point_index 
std_msgs/Int32      right_point_index 

std_msgs/Int32[]    cloud_indices

std_msgs/Float32[]  latent_types
std_msgs/Int32      size_type 
std_msgs/Int32      mode 
std_msgs/Bool       in_roi 
std_msgs/Int32      tracking_state
Point3f             geo_center 
Point3f             geo_size 



Point3f[]           trajectory 
Point3f[]           history_velocity
std_msgs/Int32[]    history_type 
std_msgs/Int32      gps_mode 
Point3d             gps_info 

================================================================================
MSG: std_msgs/UInt32
uint32 data
================================================================================
MSG: all_msgs/Point4f
std_msgs/Float32 x 
std_msgs/Float32 y 
std_msgs/Float32 z 
std_msgs/Float32 i 

================================================================================
MSG: all_msgs/FreeSpaceInfos
Point3f[]        fs_pts
std_msgs/Float32[] fs_confidence 

================================================================================
MSG: all_msgs/Lanes
Lane[] lanes
================================================================================
MSG: all_msgs/Lane
std_msgs/Int32   lane_id 
Curve            curve 
EndPoints        end_points 
std_msgs/Int32   measure_status  
std_msgs/Float32 confidence 

================================================================================
MSG: all_msgs/Curve
std_msgs/Float32 x_start 
std_msgs/Float32 x_end 
std_msgs/Float32 a 
std_msgs/Float32 b 
std_msgs/Float32 c 
std_msgs/Float32 d 
================================================================================
MSG: all_msgs/EndPoints
Point2f start 
Point2f end 

================================================================================
MSG: all_msgs/Point2f
std_msgs/Float32 x 
std_msgs/Float32 y 

================================================================================
MSG: all_msgs/RoadEdges
RoadEdge[] curbs

================================================================================
MSG: all_msgs/RoadEdge
std_msgs/Int32   roadedge_id  
Curve            curve 
EndPoints        end_points 
std_msgs/Int32   measure_status  
std_msgs/Float32 confidence 

")



(provide :all_msgs/LidarFrameMsg "caa4cd6acb7dc86f4a76180c583c5946")


