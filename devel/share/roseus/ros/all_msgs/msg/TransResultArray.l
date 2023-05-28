;; Auto-generated. Do not edit!


(when (boundp 'all_msgs::TransResultArray)
  (if (not (find-package "ALL_MSGS"))
    (make-package "ALL_MSGS"))
  (shadow 'TransResultArray (find-package "ALL_MSGS")))
(unless (find-package "ALL_MSGS::TRANSRESULTARRAY")
  (make-package "ALL_MSGS::TRANSRESULTARRAY"))

(in-package "ROS")
;;//! \htmlinclude TransResultArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass all_msgs::TransResultArray
  :super ros::object
  :slots (_header _timestamp _percept_results ))

(defmethod all_msgs::TransResultArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:timestamp __timestamp) (instance std_msgs::Float64 :init))
    ((:percept_results __percept_results) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _timestamp __timestamp)
   (setq _percept_results __percept_results)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:timestamp
   (&rest __timestamp)
   (if (keywordp (car __timestamp))
       (send* _timestamp __timestamp)
     (progn
       (if __timestamp (setq _timestamp (car __timestamp)))
       _timestamp)))
  (:percept_results
   (&rest __percept_results)
   (if (keywordp (car __percept_results))
       (send* _percept_results __percept_results)
     (progn
       (if __percept_results (setq _percept_results (car __percept_results)))
       _percept_results)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/Float64 _timestamp
    (send _timestamp :serialization-length)
    ;; all_msgs/TransResult[] _percept_results
    (apply #'+ (send-all _percept_results :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/Float64 _timestamp
       (send _timestamp :serialize s)
     ;; all_msgs/TransResult[] _percept_results
     (write-long (length _percept_results) s)
     (dolist (elem _percept_results)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/Float64 _timestamp
     (send _timestamp :deserialize buf ptr-) (incf ptr- (send _timestamp :serialization-length))
   ;; all_msgs/TransResult[] _percept_results
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _percept_results (let (r) (dotimes (i n) (push (instance all_msgs::TransResult :init) r)) r))
     (dolist (elem- _percept_results)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get all_msgs::TransResultArray :md5sum-) "3dc2c2ad61b7400d12ab8d2481f10686")
(setf (get all_msgs::TransResultArray :datatype-) "all_msgs/TransResultArray")
(setf (get all_msgs::TransResultArray :definition-)
      "std_msgs/Header header
std_msgs/Float64 timestamp 
TransResult[] percept_results

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: std_msgs/Float64
float64 data
================================================================================
MSG: all_msgs/TransResult
std_msgs/Header header
std_msgs/Float64 timestamp 
Point3f          size 
Point3f          center 
Point3f          velocity
std_msgs/Int32   type 
std_msgs/String detection_name
int32[] ct
int32[] tracking
int32 label_preds
int32 tracking_id
int32 age
int32 active
================================================================================
MSG: all_msgs/Point3f
std_msgs/Float32 x 
std_msgs/Float32 y 
std_msgs/Float32 z 
================================================================================
MSG: std_msgs/Float32
float32 data
================================================================================
MSG: std_msgs/Int32
int32 data
================================================================================
MSG: std_msgs/String
string data

")



(provide :all_msgs/TransResultArray "3dc2c2ad61b7400d12ab8d2481f10686")


