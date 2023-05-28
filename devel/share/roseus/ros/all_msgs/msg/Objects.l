;; Auto-generated. Do not edit!


(when (boundp 'all_msgs::Objects)
  (if (not (find-package "ALL_MSGS"))
    (make-package "ALL_MSGS"))
  (shadow 'Objects (find-package "ALL_MSGS")))
(unless (find-package "ALL_MSGS::OBJECTS")
  (make-package "ALL_MSGS::OBJECTS"))

(in-package "ROS")
;;//! \htmlinclude Objects.msg.html


(defclass all_msgs::Objects
  :super ros::object
  :slots (_objects ))

(defmethod all_msgs::Objects
  (:init
   (&key
    ((:objects __objects) ())
    )
   (send-super :init)
   (setq _objects __objects)
   self)
  (:objects
   (&rest __objects)
   (if (keywordp (car __objects))
       (send* _objects __objects)
     (progn
       (if __objects (setq _objects (car __objects)))
       _objects)))
  (:serialization-length
   ()
   (+
    ;; all_msgs/Object[] _objects
    (apply #'+ (send-all _objects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; all_msgs/Object[] _objects
     (write-long (length _objects) s)
     (dolist (elem _objects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; all_msgs/Object[] _objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects (let (r) (dotimes (i n) (push (instance all_msgs::Object :init) r)) r))
     (dolist (elem- _objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get all_msgs::Objects :md5sum-) "af808db5c14ee51e1e18c9cd6b126641")
(setf (get all_msgs::Objects :datatype-) "all_msgs/Objects")
(setf (get all_msgs::Objects :definition-)
      "Object[]         objects
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
MSG: std_msgs/Float64
float64 data
================================================================================
MSG: std_msgs/Int32
int32 data
================================================================================
MSG: std_msgs/Float32
float32 data
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
MSG: all_msgs/Point3d
std_msgs/Float64 x 
std_msgs/Float64 y 
std_msgs/Float64 z 

")



(provide :all_msgs/Objects "af808db5c14ee51e1e18c9cd6b126641")


