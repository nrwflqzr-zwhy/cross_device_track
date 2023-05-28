; Auto-generated. Do not edit!


(cl:in-package all_msgs-msg)


;//! \htmlinclude DetectedObjectArrayFilter.msg.html

(cl:defclass <DetectedObjectArrayFilter> (roslisp-msg-protocol:ros-message)
  ((timeStamp
    :reader timeStamp
    :initarg :timeStamp
    :type cl:real
    :initform 0)
   (objects
    :reader objects
    :initarg :objects
    :type (cl:vector all_msgs-msg:DetectedObject)
   :initform (cl:make-array 0 :element-type 'all_msgs-msg:DetectedObject :initial-element (cl:make-instance 'all_msgs-msg:DetectedObject)))
   (outRange
    :reader outRange
    :initarg :outRange
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass DetectedObjectArrayFilter (<DetectedObjectArrayFilter>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectedObjectArrayFilter>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectedObjectArrayFilter)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name all_msgs-msg:<DetectedObjectArrayFilter> is deprecated: use all_msgs-msg:DetectedObjectArrayFilter instead.")))

(cl:ensure-generic-function 'timeStamp-val :lambda-list '(m))
(cl:defmethod timeStamp-val ((m <DetectedObjectArrayFilter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:timeStamp-val is deprecated.  Use all_msgs-msg:timeStamp instead.")
  (timeStamp m))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <DetectedObjectArrayFilter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:objects-val is deprecated.  Use all_msgs-msg:objects instead.")
  (objects m))

(cl:ensure-generic-function 'outRange-val :lambda-list '(m))
(cl:defmethod outRange-val ((m <DetectedObjectArrayFilter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:outRange-val is deprecated.  Use all_msgs-msg:outRange instead.")
  (outRange m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectedObjectArrayFilter>) ostream)
  "Serializes a message object of type '<DetectedObjectArrayFilter>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'timeStamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'timeStamp) (cl:floor (cl:slot-value msg 'timeStamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'outRange))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'outRange))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectedObjectArrayFilter>) istream)
  "Deserializes a message object of type '<DetectedObjectArrayFilter>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timeStamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'all_msgs-msg:DetectedObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'outRange) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'outRange)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectedObjectArrayFilter>)))
  "Returns string type for a message object of type '<DetectedObjectArrayFilter>"
  "all_msgs/DetectedObjectArrayFilter")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectedObjectArrayFilter)))
  "Returns string type for a message object of type 'DetectedObjectArrayFilter"
  "all_msgs/DetectedObjectArrayFilter")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectedObjectArrayFilter>)))
  "Returns md5sum for a message object of type '<DetectedObjectArrayFilter>"
  "16bfdcf016f4d573ea2bc95caacb496e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectedObjectArrayFilter)))
  "Returns md5sum for a message object of type 'DetectedObjectArrayFilter"
  "16bfdcf016f4d573ea2bc95caacb496e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectedObjectArrayFilter>)))
  "Returns full string definition for message of type '<DetectedObjectArrayFilter>"
  (cl:format cl:nil "time             timeStamp  ##### 消息推送时间戳~%DetectedObject[] objects    ##### 目标列表~%uint32[] outRange ####超出范围的人员或车辆列表~%~%~%================================================================================~%MSG: all_msgs/DetectedObject~%std_msgs/Header    header~%~%uint32             id    ## target id~%string             type  ## target type~%float32            score ## confidence score~%~%float64            x     ## target coordinates~%float64            y~%float64            z~%~%float64            vx    ## target velocity~%float64            vy~%float64            vz~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectedObjectArrayFilter)))
  "Returns full string definition for message of type 'DetectedObjectArrayFilter"
  (cl:format cl:nil "time             timeStamp  ##### 消息推送时间戳~%DetectedObject[] objects    ##### 目标列表~%uint32[] outRange ####超出范围的人员或车辆列表~%~%~%================================================================================~%MSG: all_msgs/DetectedObject~%std_msgs/Header    header~%~%uint32             id    ## target id~%string             type  ## target type~%float32            score ## confidence score~%~%float64            x     ## target coordinates~%float64            y~%float64            z~%~%float64            vx    ## target velocity~%float64            vy~%float64            vz~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectedObjectArrayFilter>))
  (cl:+ 0
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'outRange) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectedObjectArrayFilter>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectedObjectArrayFilter
    (cl:cons ':timeStamp (timeStamp msg))
    (cl:cons ':objects (objects msg))
    (cl:cons ':outRange (outRange msg))
))
