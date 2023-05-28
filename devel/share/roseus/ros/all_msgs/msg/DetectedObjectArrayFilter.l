;; Auto-generated. Do not edit!


(when (boundp 'all_msgs::DetectedObjectArrayFilter)
  (if (not (find-package "ALL_MSGS"))
    (make-package "ALL_MSGS"))
  (shadow 'DetectedObjectArrayFilter (find-package "ALL_MSGS")))
(unless (find-package "ALL_MSGS::DETECTEDOBJECTARRAYFILTER")
  (make-package "ALL_MSGS::DETECTEDOBJECTARRAYFILTER"))

(in-package "ROS")
;;//! \htmlinclude DetectedObjectArrayFilter.msg.html


(defclass all_msgs::DetectedObjectArrayFilter
  :super ros::object
  :slots (_timeStamp _objects _outRange ))

(defmethod all_msgs::DetectedObjectArrayFilter
  (:init
   (&key
    ((:timeStamp __timeStamp) (instance ros::time :init))
    ((:objects __objects) ())
    ((:outRange __outRange) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _timeStamp __timeStamp)
   (setq _objects __objects)
   (setq _outRange __outRange)
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
  (:outRange
   (&optional __outRange)
   (if __outRange (setq _outRange __outRange)) _outRange)
  (:serialization-length
   ()
   (+
    ;; time _timeStamp
    8
    ;; all_msgs/DetectedObject[] _objects
    (apply #'+ (send-all _objects :serialization-length)) 4
    ;; uint32[] _outRange
    (* 4    (length _outRange)) 4
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
     ;; uint32[] _outRange
     (write-long (length _outRange) s)
     (dotimes (i (length _outRange))
       (write-long (elt _outRange i) s)
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
   ;; uint32[] _outRange
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _outRange (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _outRange i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get all_msgs::DetectedObjectArrayFilter :md5sum-) "16bfdcf016f4d573ea2bc95caacb496e")
(setf (get all_msgs::DetectedObjectArrayFilter :datatype-) "all_msgs/DetectedObjectArrayFilter")
(setf (get all_msgs::DetectedObjectArrayFilter :definition-)
      "time             timeStamp  ##### 消息推送时间戳
DetectedObject[] objects    ##### 目标列表
uint32[] outRange ####超出范围的人员或车辆列表


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



(provide :all_msgs/DetectedObjectArrayFilter "16bfdcf016f4d573ea2bc95caacb496e")


