;; Auto-generated. Do not edit!


(when (boundp 'all_msgs::RoadEdges)
  (if (not (find-package "ALL_MSGS"))
    (make-package "ALL_MSGS"))
  (shadow 'RoadEdges (find-package "ALL_MSGS")))
(unless (find-package "ALL_MSGS::ROADEDGES")
  (make-package "ALL_MSGS::ROADEDGES"))

(in-package "ROS")
;;//! \htmlinclude RoadEdges.msg.html


(defclass all_msgs::RoadEdges
  :super ros::object
  :slots (_curbs ))

(defmethod all_msgs::RoadEdges
  (:init
   (&key
    ((:curbs __curbs) ())
    )
   (send-super :init)
   (setq _curbs __curbs)
   self)
  (:curbs
   (&rest __curbs)
   (if (keywordp (car __curbs))
       (send* _curbs __curbs)
     (progn
       (if __curbs (setq _curbs (car __curbs)))
       _curbs)))
  (:serialization-length
   ()
   (+
    ;; all_msgs/RoadEdge[] _curbs
    (apply #'+ (send-all _curbs :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; all_msgs/RoadEdge[] _curbs
     (write-long (length _curbs) s)
     (dolist (elem _curbs)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; all_msgs/RoadEdge[] _curbs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _curbs (let (r) (dotimes (i n) (push (instance all_msgs::RoadEdge :init) r)) r))
     (dolist (elem- _curbs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get all_msgs::RoadEdges :md5sum-) "5f84b2030d3a2bc9898f012cbd7a61c1")
(setf (get all_msgs::RoadEdges :datatype-) "all_msgs/RoadEdges")
(setf (get all_msgs::RoadEdges :definition-)
      "RoadEdge[] curbs

================================================================================
MSG: all_msgs/RoadEdge
std_msgs/Int32   roadedge_id  
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



(provide :all_msgs/RoadEdges "5f84b2030d3a2bc9898f012cbd7a61c1")


