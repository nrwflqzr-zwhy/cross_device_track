;; Auto-generated. Do not edit!


(when (boundp 'all_msgs::TransResult)
  (if (not (find-package "ALL_MSGS"))
    (make-package "ALL_MSGS"))
  (shadow 'TransResult (find-package "ALL_MSGS")))
(unless (find-package "ALL_MSGS::TRANSRESULT")
  (make-package "ALL_MSGS::TRANSRESULT"))

(in-package "ROS")
;;//! \htmlinclude TransResult.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass all_msgs::TransResult
  :super ros::object
  :slots (_header _timestamp _size _center _velocity _type _detection_name _ct _tracking _label_preds _tracking_id _age _active ))

(defmethod all_msgs::TransResult
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:timestamp __timestamp) (instance std_msgs::Float64 :init))
    ((:size __size) (instance all_msgs::Point3f :init))
    ((:center __center) (instance all_msgs::Point3f :init))
    ((:velocity __velocity) (instance all_msgs::Point3f :init))
    ((:type __type) (instance std_msgs::Int32 :init))
    ((:detection_name __detection_name) (instance std_msgs::String :init))
    ((:ct __ct) (make-array 0 :initial-element 0 :element-type :integer))
    ((:tracking __tracking) (make-array 0 :initial-element 0 :element-type :integer))
    ((:label_preds __label_preds) 0)
    ((:tracking_id __tracking_id) 0)
    ((:age __age) 0)
    ((:active __active) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _timestamp __timestamp)
   (setq _size __size)
   (setq _center __center)
   (setq _velocity __velocity)
   (setq _type __type)
   (setq _detection_name __detection_name)
   (setq _ct __ct)
   (setq _tracking __tracking)
   (setq _label_preds (round __label_preds))
   (setq _tracking_id (round __tracking_id))
   (setq _age (round __age))
   (setq _active (round __active))
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
  (:size
   (&rest __size)
   (if (keywordp (car __size))
       (send* _size __size)
     (progn
       (if __size (setq _size (car __size)))
       _size)))
  (:center
   (&rest __center)
   (if (keywordp (car __center))
       (send* _center __center)
     (progn
       (if __center (setq _center (car __center)))
       _center)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:detection_name
   (&rest __detection_name)
   (if (keywordp (car __detection_name))
       (send* _detection_name __detection_name)
     (progn
       (if __detection_name (setq _detection_name (car __detection_name)))
       _detection_name)))
  (:ct
   (&optional __ct)
   (if __ct (setq _ct __ct)) _ct)
  (:tracking
   (&optional __tracking)
   (if __tracking (setq _tracking __tracking)) _tracking)
  (:label_preds
   (&optional __label_preds)
   (if __label_preds (setq _label_preds __label_preds)) _label_preds)
  (:tracking_id
   (&optional __tracking_id)
   (if __tracking_id (setq _tracking_id __tracking_id)) _tracking_id)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:active
   (&optional __active)
   (if __active (setq _active __active)) _active)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/Float64 _timestamp
    (send _timestamp :serialization-length)
    ;; all_msgs/Point3f _size
    (send _size :serialization-length)
    ;; all_msgs/Point3f _center
    (send _center :serialization-length)
    ;; all_msgs/Point3f _velocity
    (send _velocity :serialization-length)
    ;; std_msgs/Int32 _type
    (send _type :serialization-length)
    ;; std_msgs/String _detection_name
    (send _detection_name :serialization-length)
    ;; int32[] _ct
    (* 4    (length _ct)) 4
    ;; int32[] _tracking
    (* 4    (length _tracking)) 4
    ;; int32 _label_preds
    4
    ;; int32 _tracking_id
    4
    ;; int32 _age
    4
    ;; int32 _active
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/Float64 _timestamp
       (send _timestamp :serialize s)
     ;; all_msgs/Point3f _size
       (send _size :serialize s)
     ;; all_msgs/Point3f _center
       (send _center :serialize s)
     ;; all_msgs/Point3f _velocity
       (send _velocity :serialize s)
     ;; std_msgs/Int32 _type
       (send _type :serialize s)
     ;; std_msgs/String _detection_name
       (send _detection_name :serialize s)
     ;; int32[] _ct
     (write-long (length _ct) s)
     (dotimes (i (length _ct))
       (write-long (elt _ct i) s)
       )
     ;; int32[] _tracking
     (write-long (length _tracking) s)
     (dotimes (i (length _tracking))
       (write-long (elt _tracking i) s)
       )
     ;; int32 _label_preds
       (write-long _label_preds s)
     ;; int32 _tracking_id
       (write-long _tracking_id s)
     ;; int32 _age
       (write-long _age s)
     ;; int32 _active
       (write-long _active s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/Float64 _timestamp
     (send _timestamp :deserialize buf ptr-) (incf ptr- (send _timestamp :serialization-length))
   ;; all_msgs/Point3f _size
     (send _size :deserialize buf ptr-) (incf ptr- (send _size :serialization-length))
   ;; all_msgs/Point3f _center
     (send _center :deserialize buf ptr-) (incf ptr- (send _center :serialization-length))
   ;; all_msgs/Point3f _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; std_msgs/Int32 _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; std_msgs/String _detection_name
     (send _detection_name :deserialize buf ptr-) (incf ptr- (send _detection_name :serialization-length))
   ;; int32[] _ct
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ct (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _ct i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _tracking
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tracking (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _tracking i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32 _label_preds
     (setq _label_preds (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _tracking_id
     (setq _tracking_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _age
     (setq _age (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _active
     (setq _active (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get all_msgs::TransResult :md5sum-) "306dc6cbac8c1352da94701707ad2094")
(setf (get all_msgs::TransResult :datatype-) "all_msgs/TransResult")
(setf (get all_msgs::TransResult :definition-)
      "std_msgs/Header header
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



(provide :all_msgs/TransResult "306dc6cbac8c1352da94701707ad2094")


