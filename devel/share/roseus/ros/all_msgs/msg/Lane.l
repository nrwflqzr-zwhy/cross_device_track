;; Auto-generated. Do not edit!


(when (boundp 'all_msgs::Lane)
  (if (not (find-package "ALL_MSGS"))
    (make-package "ALL_MSGS"))
  (shadow 'Lane (find-package "ALL_MSGS")))
(unless (find-package "ALL_MSGS::LANE")
  (make-package "ALL_MSGS::LANE"))

(in-package "ROS")
;;//! \htmlinclude Lane.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass all_msgs::Lane
  :super ros::object
  :slots (_lane_id _curve _end_points _measure_status _confidence ))

(defmethod all_msgs::Lane
  (:init
   (&key
    ((:lane_id __lane_id) (instance std_msgs::Int32 :init))
    ((:curve __curve) (instance all_msgs::Curve :init))
    ((:end_points __end_points) (instance all_msgs::EndPoints :init))
    ((:measure_status __measure_status) (instance std_msgs::Int32 :init))
    ((:confidence __confidence) (instance std_msgs::Float32 :init))
    )
   (send-super :init)
   (setq _lane_id __lane_id)
   (setq _curve __curve)
   (setq _end_points __end_points)
   (setq _measure_status __measure_status)
   (setq _confidence __confidence)
   self)
  (:lane_id
   (&rest __lane_id)
   (if (keywordp (car __lane_id))
       (send* _lane_id __lane_id)
     (progn
       (if __lane_id (setq _lane_id (car __lane_id)))
       _lane_id)))
  (:curve
   (&rest __curve)
   (if (keywordp (car __curve))
       (send* _curve __curve)
     (progn
       (if __curve (setq _curve (car __curve)))
       _curve)))
  (:end_points
   (&rest __end_points)
   (if (keywordp (car __end_points))
       (send* _end_points __end_points)
     (progn
       (if __end_points (setq _end_points (car __end_points)))
       _end_points)))
  (:measure_status
   (&rest __measure_status)
   (if (keywordp (car __measure_status))
       (send* _measure_status __measure_status)
     (progn
       (if __measure_status (setq _measure_status (car __measure_status)))
       _measure_status)))
  (:confidence
   (&rest __confidence)
   (if (keywordp (car __confidence))
       (send* _confidence __confidence)
     (progn
       (if __confidence (setq _confidence (car __confidence)))
       _confidence)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Int32 _lane_id
    (send _lane_id :serialization-length)
    ;; all_msgs/Curve _curve
    (send _curve :serialization-length)
    ;; all_msgs/EndPoints _end_points
    (send _end_points :serialization-length)
    ;; std_msgs/Int32 _measure_status
    (send _measure_status :serialization-length)
    ;; std_msgs/Float32 _confidence
    (send _confidence :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Int32 _lane_id
       (send _lane_id :serialize s)
     ;; all_msgs/Curve _curve
       (send _curve :serialize s)
     ;; all_msgs/EndPoints _end_points
       (send _end_points :serialize s)
     ;; std_msgs/Int32 _measure_status
       (send _measure_status :serialize s)
     ;; std_msgs/Float32 _confidence
       (send _confidence :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Int32 _lane_id
     (send _lane_id :deserialize buf ptr-) (incf ptr- (send _lane_id :serialization-length))
   ;; all_msgs/Curve _curve
     (send _curve :deserialize buf ptr-) (incf ptr- (send _curve :serialization-length))
   ;; all_msgs/EndPoints _end_points
     (send _end_points :deserialize buf ptr-) (incf ptr- (send _end_points :serialization-length))
   ;; std_msgs/Int32 _measure_status
     (send _measure_status :deserialize buf ptr-) (incf ptr- (send _measure_status :serialization-length))
   ;; std_msgs/Float32 _confidence
     (send _confidence :deserialize buf ptr-) (incf ptr- (send _confidence :serialization-length))
   ;;
   self)
  )

(setf (get all_msgs::Lane :md5sum-) "fd19b0521fb882c8cb26592918c30eb4")
(setf (get all_msgs::Lane :datatype-) "all_msgs/Lane")
(setf (get all_msgs::Lane :definition-)
      "std_msgs/Int32   lane_id 
Curve            curve 
EndPoints        end_points 
std_msgs/Int32   measure_status  
std_msgs/Float32 confidence 

================================================================================
MSG: std_msgs/Int32
int32 data
================================================================================
MSG: all_msgs/Curve
std_msgs/Float32 x_start 
std_msgs/Float32 x_end 
std_msgs/Float32 a 
std_msgs/Float32 b 
std_msgs/Float32 c 
std_msgs/Float32 d 
================================================================================
MSG: std_msgs/Float32
float32 data
================================================================================
MSG: all_msgs/EndPoints
Point2f start 
Point2f end 

================================================================================
MSG: all_msgs/Point2f
std_msgs/Float32 x 
std_msgs/Float32 y 

")



(provide :all_msgs/Lane "fd19b0521fb882c8cb26592918c30eb4")


