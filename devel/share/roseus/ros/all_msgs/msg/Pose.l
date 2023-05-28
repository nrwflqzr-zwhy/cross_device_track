;; Auto-generated. Do not edit!


(when (boundp 'all_msgs::Pose)
  (if (not (find-package "ALL_MSGS"))
    (make-package "ALL_MSGS"))
  (shadow 'Pose (find-package "ALL_MSGS")))
(unless (find-package "ALL_MSGS::POSE")
  (make-package "ALL_MSGS::POSE"))

(in-package "ROS")
;;//! \htmlinclude Pose.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass all_msgs::Pose
  :super ros::object
  :slots (_x _y _z _roll _pitch _yaw _status ))

(defmethod all_msgs::Pose
  (:init
   (&key
    ((:x __x) (instance std_msgs::Float32 :init))
    ((:y __y) (instance std_msgs::Float32 :init))
    ((:z __z) (instance std_msgs::Float32 :init))
    ((:roll __roll) (instance std_msgs::Float32 :init))
    ((:pitch __pitch) (instance std_msgs::Float32 :init))
    ((:yaw __yaw) (instance std_msgs::Float32 :init))
    ((:status __status) (instance std_msgs::Int32 :init))
    )
   (send-super :init)
   (setq _x __x)
   (setq _y __y)
   (setq _z __z)
   (setq _roll __roll)
   (setq _pitch __pitch)
   (setq _yaw __yaw)
   (setq _status __status)
   self)
  (:x
   (&rest __x)
   (if (keywordp (car __x))
       (send* _x __x)
     (progn
       (if __x (setq _x (car __x)))
       _x)))
  (:y
   (&rest __y)
   (if (keywordp (car __y))
       (send* _y __y)
     (progn
       (if __y (setq _y (car __y)))
       _y)))
  (:z
   (&rest __z)
   (if (keywordp (car __z))
       (send* _z __z)
     (progn
       (if __z (setq _z (car __z)))
       _z)))
  (:roll
   (&rest __roll)
   (if (keywordp (car __roll))
       (send* _roll __roll)
     (progn
       (if __roll (setq _roll (car __roll)))
       _roll)))
  (:pitch
   (&rest __pitch)
   (if (keywordp (car __pitch))
       (send* _pitch __pitch)
     (progn
       (if __pitch (setq _pitch (car __pitch)))
       _pitch)))
  (:yaw
   (&rest __yaw)
   (if (keywordp (car __yaw))
       (send* _yaw __yaw)
     (progn
       (if __yaw (setq _yaw (car __yaw)))
       _yaw)))
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float32 _x
    (send _x :serialization-length)
    ;; std_msgs/Float32 _y
    (send _y :serialization-length)
    ;; std_msgs/Float32 _z
    (send _z :serialization-length)
    ;; std_msgs/Float32 _roll
    (send _roll :serialization-length)
    ;; std_msgs/Float32 _pitch
    (send _pitch :serialization-length)
    ;; std_msgs/Float32 _yaw
    (send _yaw :serialization-length)
    ;; std_msgs/Int32 _status
    (send _status :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float32 _x
       (send _x :serialize s)
     ;; std_msgs/Float32 _y
       (send _y :serialize s)
     ;; std_msgs/Float32 _z
       (send _z :serialize s)
     ;; std_msgs/Float32 _roll
       (send _roll :serialize s)
     ;; std_msgs/Float32 _pitch
       (send _pitch :serialize s)
     ;; std_msgs/Float32 _yaw
       (send _yaw :serialize s)
     ;; std_msgs/Int32 _status
       (send _status :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float32 _x
     (send _x :deserialize buf ptr-) (incf ptr- (send _x :serialization-length))
   ;; std_msgs/Float32 _y
     (send _y :deserialize buf ptr-) (incf ptr- (send _y :serialization-length))
   ;; std_msgs/Float32 _z
     (send _z :deserialize buf ptr-) (incf ptr- (send _z :serialization-length))
   ;; std_msgs/Float32 _roll
     (send _roll :deserialize buf ptr-) (incf ptr- (send _roll :serialization-length))
   ;; std_msgs/Float32 _pitch
     (send _pitch :deserialize buf ptr-) (incf ptr- (send _pitch :serialization-length))
   ;; std_msgs/Float32 _yaw
     (send _yaw :deserialize buf ptr-) (incf ptr- (send _yaw :serialization-length))
   ;; std_msgs/Int32 _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;;
   self)
  )

(setf (get all_msgs::Pose :md5sum-) "519b8f1b8da97c340862edf4f757de6c")
(setf (get all_msgs::Pose :datatype-) "all_msgs/Pose")
(setf (get all_msgs::Pose :definition-)
      "std_msgs/Float32 x 
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
")



(provide :all_msgs/Pose "519b8f1b8da97c340862edf4f757de6c")


