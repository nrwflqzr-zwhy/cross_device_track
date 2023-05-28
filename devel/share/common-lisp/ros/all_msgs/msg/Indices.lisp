; Auto-generated. Do not edit!


(cl:in-package all_msgs-msg)


;//! \htmlinclude Indices.msg.html

(cl:defclass <Indices> (roslisp-msg-protocol:ros-message)
  ((indices
    :reader indices
    :initarg :indices
    :type (cl:vector std_msgs-msg:Int32)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:Int32 :initial-element (cl:make-instance 'std_msgs-msg:Int32))))
)

(cl:defclass Indices (<Indices>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Indices>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Indices)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name all_msgs-msg:<Indices> is deprecated: use all_msgs-msg:Indices instead.")))

(cl:ensure-generic-function 'indices-val :lambda-list '(m))
(cl:defmethod indices-val ((m <Indices>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:indices-val is deprecated.  Use all_msgs-msg:indices instead.")
  (indices m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Indices>) ostream)
  "Serializes a message object of type '<Indices>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'indices))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'indices))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Indices>) istream)
  "Deserializes a message object of type '<Indices>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'indices) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'indices)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:Int32))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Indices>)))
  "Returns string type for a message object of type '<Indices>"
  "all_msgs/Indices")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Indices)))
  "Returns string type for a message object of type 'Indices"
  "all_msgs/Indices")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Indices>)))
  "Returns md5sum for a message object of type '<Indices>"
  "355aaec182bd3a24f494f1ab4a82fd9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Indices)))
  "Returns md5sum for a message object of type 'Indices"
  "355aaec182bd3a24f494f1ab4a82fd9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Indices>)))
  "Returns full string definition for message of type '<Indices>"
  (cl:format cl:nil "std_msgs/Int32[]    indices~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Indices)))
  "Returns full string definition for message of type 'Indices"
  (cl:format cl:nil "std_msgs/Int32[]    indices~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Indices>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'indices) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Indices>))
  "Converts a ROS message object to a list"
  (cl:list 'Indices
    (cl:cons ':indices (indices msg))
))
