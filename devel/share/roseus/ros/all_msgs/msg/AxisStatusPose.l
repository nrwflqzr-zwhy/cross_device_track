;; Auto-generated. Do not edit!


(when (boundp 'all_msgs::AxisStatusPose)
  (if (not (find-package "ALL_MSGS"))
    (make-package "ALL_MSGS"))
  (shadow 'AxisStatusPose (find-package "ALL_MSGS")))
(unless (find-package "ALL_MSGS::AXISSTATUSPOSE")
  (make-package "ALL_MSGS::AXISSTATUSPOSE"))

(in-package "ROS")
;;//! \htmlinclude AxisStatusPose.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass all_msgs::AxisStatusPose
  :super ros::object
  :slots (_status _pose ))

(defmethod all_msgs::AxisStatusPose
  (:init
   (&key
    ((:status __status) (instance std_msgs::Int32 :init))
    ((:pose __pose) (instance all_msgs::Pose :init))
    )
   (send-super :init)
   (setq _status __status)
   (setq _pose __pose)
   self)
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Int32 _status
    (send _status :serialization-length)
    ;; all_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Int32 _status
       (send _status :serialize s)
     ;; all_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Int32 _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;; all_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get all_msgs::AxisStatusPose :md5sum-) "1987389e84dad24c41bcd78726580d20")
(setf (get all_msgs::AxisStatusPose :datatype-) "all_msgs/AxisStatusPose")
(setf (get all_msgs::AxisStatusPose :definition-)
      "std_msgs/Int32 status 
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



(provide :all_msgs/AxisStatusPose "1987389e84dad24c41bcd78726580d20")


