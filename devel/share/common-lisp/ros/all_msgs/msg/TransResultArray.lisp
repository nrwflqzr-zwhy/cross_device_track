; Auto-generated. Do not edit!


(cl:in-package all_msgs-msg)


;//! \htmlinclude TransResultArray.msg.html

(cl:defclass <TransResultArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (timestamp
    :reader timestamp
    :initarg :timestamp
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (percept_results
    :reader percept_results
    :initarg :percept_results
    :type (cl:vector all_msgs-msg:TransResult)
   :initform (cl:make-array 0 :element-type 'all_msgs-msg:TransResult :initial-element (cl:make-instance 'all_msgs-msg:TransResult))))
)

(cl:defclass TransResultArray (<TransResultArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TransResultArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TransResultArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name all_msgs-msg:<TransResultArray> is deprecated: use all_msgs-msg:TransResultArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TransResultArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:header-val is deprecated.  Use all_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <TransResultArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:timestamp-val is deprecated.  Use all_msgs-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'percept_results-val :lambda-list '(m))
(cl:defmethod percept_results-val ((m <TransResultArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:percept_results-val is deprecated.  Use all_msgs-msg:percept_results instead.")
  (percept_results m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TransResultArray>) ostream)
  "Serializes a message object of type '<TransResultArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'timestamp) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'percept_results))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'percept_results))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TransResultArray>) istream)
  "Deserializes a message object of type '<TransResultArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'timestamp) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'percept_results) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'percept_results)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'all_msgs-msg:TransResult))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TransResultArray>)))
  "Returns string type for a message object of type '<TransResultArray>"
  "all_msgs/TransResultArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TransResultArray)))
  "Returns string type for a message object of type 'TransResultArray"
  "all_msgs/TransResultArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TransResultArray>)))
  "Returns md5sum for a message object of type '<TransResultArray>"
  "3dc2c2ad61b7400d12ab8d2481f10686")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TransResultArray)))
  "Returns md5sum for a message object of type 'TransResultArray"
  "3dc2c2ad61b7400d12ab8d2481f10686")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TransResultArray>)))
  "Returns full string definition for message of type '<TransResultArray>"
  (cl:format cl:nil "std_msgs/Header header~%std_msgs/Float64 timestamp ~%TransResult[] percept_results~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: all_msgs/TransResult~%std_msgs/Header header~%std_msgs/Float64 timestamp ~%Point3f          size ~%Point3f          center ~%Point3f          velocity~%std_msgs/Int32   type ~%std_msgs/String detection_name~%int32[] ct~%int32[] tracking~%int32 label_preds~%int32 tracking_id~%int32 age~%int32 active~%================================================================================~%MSG: all_msgs/Point3f~%std_msgs/Float32 x ~%std_msgs/Float32 y ~%std_msgs/Float32 z ~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TransResultArray)))
  "Returns full string definition for message of type 'TransResultArray"
  (cl:format cl:nil "std_msgs/Header header~%std_msgs/Float64 timestamp ~%TransResult[] percept_results~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: all_msgs/TransResult~%std_msgs/Header header~%std_msgs/Float64 timestamp ~%Point3f          size ~%Point3f          center ~%Point3f          velocity~%std_msgs/Int32   type ~%std_msgs/String detection_name~%int32[] ct~%int32[] tracking~%int32 label_preds~%int32 tracking_id~%int32 age~%int32 active~%================================================================================~%MSG: all_msgs/Point3f~%std_msgs/Float32 x ~%std_msgs/Float32 y ~%std_msgs/Float32 z ~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TransResultArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'timestamp))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'percept_results) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TransResultArray>))
  "Converts a ROS message object to a list"
  (cl:list 'TransResultArray
    (cl:cons ':header (header msg))
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':percept_results (percept_results msg))
))
