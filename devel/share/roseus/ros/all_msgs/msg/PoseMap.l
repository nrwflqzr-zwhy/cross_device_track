;; Auto-generated. Do not edit!


(when (boundp 'all_msgs::PoseMap)
  (if (not (find-package "ALL_MSGS"))
    (make-package "ALL_MSGS"))
  (shadow 'PoseMap (find-package "ALL_MSGS")))
(unless (find-package "ALL_MSGS::POSEMAP")
  (make-package "ALL_MSGS::POSEMAP"))

(in-package "ROS")
;;//! \htmlinclude PoseMap.msg.html


(defclass all_msgs::PoseMap
  :super ros::object
  :slots (_status_poses ))

(defmethod all_msgs::PoseMap
  (:init
   (&key
    ((:status_poses __status_poses) ())
    )
   (send-super :init)
   (setq _status_poses __status_poses)
   self)
  (:status_poses
   (&rest __status_poses)
   (if (keywordp (car __status_poses))
       (send* _status_poses __status_poses)
     (progn
       (if __status_poses (setq _status_poses (car __status_poses)))
       _status_poses)))
  (:serialization-length
   ()
   (+
    ;; all_msgs/AxisStatusPose[] _status_poses
    (apply #'+ (send-all _status_poses :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; all_msgs/AxisStatusPose[] _status_poses
     (write-long (length _status_poses) s)
     (dolist (elem _status_poses)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; all_msgs/AxisStatusPose[] _status_poses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _status_poses (let (r) (dotimes (i n) (push (instance all_msgs::AxisStatusPose :init) r)) r))
     (dolist (elem- _status_poses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get all_msgs::PoseMap :md5sum-) "51fc7df0ce0cb8096f687175e8cb1f26")
(setf (get all_msgs::PoseMap :datatype-) "all_msgs/PoseMap")
(setf (get all_msgs::PoseMap :definition-)
      "AxisStatusPose[] status_poses 

================================================================================
MSG: all_msgs/AxisStatusPose
std_msgs/Int32 status 
Pose           pose 
================================================================================
MSG: std_msgs/Int32
int32 data
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
")



(provide :all_msgs/PoseMap "51fc7df0ce0cb8096f687175e8cb1f26")


