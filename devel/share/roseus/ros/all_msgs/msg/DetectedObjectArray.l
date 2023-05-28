;; Auto-generated. Do not edit!


(when (boundp 'all_msgs::DetectedObjectArray)
  (if (not (find-package "ALL_MSGS"))
    (make-package "ALL_MSGS"))
  (shadow 'DetectedObjectArray (find-package "ALL_MSGS")))
(unless (find-package "ALL_MSGS::DETECTEDOBJECTARRAY")
  (make-package "ALL_MSGS::DETECTEDOBJECTARRAY"))

(in-package "ROS")
;;//! \htmlinclude DetectedObjectArray.msg.html


(defclass all_msgs::DetectedObjectArray
  :super ros::object
  :slots (_timeStamp _objects ))

(defmethod all_msgs::DetectedObjectArray
  (:init
   (&key
    ((:timeStamp __timeStamp) (instance ros::time :init))
    ((:objects __objects) ())
    )
   (send-super :init)
   (setq _timeStamp __timeStamp)
   (setq _objects __objects)
   self)
  (:timeStamp
   (&optional __timeStamp)
   (if __timeStamp (setq _timeStamp __timeStamp)) _timeStamp)
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
    ;; time _timeStamp
    8
    ;; all_msgs/DetectedObject[] _objects
    (apply #'+ (send-all _objects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _timeStamp
       (write-long (send _timeStamp :sec) s) (write-long (send _timeStamp :nsec) s)
     ;; all_msgs/DetectedObject[] _objects
     (write-long (length _objects) s)
     (dolist (elem _objects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _timeStamp
     (send _timeStamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _timeStamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; all_msgs/DetectedObject[] _objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects (let (r) (dotimes (i n) (push (instance all_msgs::DetectedObject :init) r)) r))
     (dolist (elem- _objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get all_msgs::DetectedObjectArray :md5sum-) "a0ef94f4e22a44cc272ff139f4b8408a")
(setf (get all_msgs::DetectedObjectArray :datatype-) "all_msgs/DetectedObjectArray")
(setf (get all_msgs::DetectedObjectArray :definition-)
      "time          timeStamp  ##### 消息推送时间戳
DetectedObject[] objects    ##### 目标列表
================================================================================
MSG: all_msgs/DetectedObject
std_msgs/Header    header

uint32             id    ## target id
string             type  ## target type
float32            score ## confidence score

float64            x     ## target coordinates
float64            y
float64            z

float64            vx    ## target velocity
float64            vy
float64            vz



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

")



(provide :all_msgs/DetectedObjectArray "a0ef94f4e22a44cc272ff139f4b8408a")


