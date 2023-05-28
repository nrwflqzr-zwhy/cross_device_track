;; Auto-generated. Do not edit!


(when (boundp 'all_msgs::Lanes)
  (if (not (find-package "ALL_MSGS"))
    (make-package "ALL_MSGS"))
  (shadow 'Lanes (find-package "ALL_MSGS")))
(unless (find-package "ALL_MSGS::LANES")
  (make-package "ALL_MSGS::LANES"))

(in-package "ROS")
;;//! \htmlinclude Lanes.msg.html


(defclass all_msgs::Lanes
  :super ros::object
  :slots (_lanes ))

(defmethod all_msgs::Lanes
  (:init
   (&key
    ((:lanes __lanes) ())
    )
   (send-super :init)
   (setq _lanes __lanes)
   self)
  (:lanes
   (&rest __lanes)
   (if (keywordp (car __lanes))
       (send* _lanes __lanes)
     (progn
       (if __lanes (setq _lanes (car __lanes)))
       _lanes)))
  (:serialization-length
   ()
   (+
    ;; all_msgs/Lane[] _lanes
    (apply #'+ (send-all _lanes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; all_msgs/Lane[] _lanes
     (write-long (length _lanes) s)
     (dolist (elem _lanes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; all_msgs/Lane[] _lanes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lanes (let (r) (dotimes (i n) (push (instance all_msgs::Lane :init) r)) r))
     (dolist (elem- _lanes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get all_msgs::Lanes :md5sum-) "8c91e3b4d885a65b5ff2c91de75a06a9")
(setf (get all_msgs::Lanes :datatype-) "all_msgs/Lanes")
(setf (get all_msgs::Lanes :definition-)
      "Lane[] lanes
================================================================================
MSG: all_msgs/Lane
std_msgs/Int32   lane_id 
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



(provide :all_msgs/Lanes "8c91e3b4d885a65b5ff2c91de75a06a9")


