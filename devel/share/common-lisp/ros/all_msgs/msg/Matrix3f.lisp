; Auto-generated. Do not edit!


(cl:in-package all_msgs-msg)


;//! \htmlinclude Matrix3f.msg.html

(cl:defclass <Matrix3f> (roslisp-msg-protocol:ros-message)
  ((matrix3x3
    :reader matrix3x3
    :initarg :matrix3x3
    :type (cl:vector std_msgs-msg:Float32)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:Float32 :initial-element (cl:make-instance 'std_msgs-msg:Float32))))
)

(cl:defclass Matrix3f (<Matrix3f>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Matrix3f>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Matrix3f)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name all_msgs-msg:<Matrix3f> is deprecated: use all_msgs-msg:Matrix3f instead.")))

(cl:ensure-generic-function 'matrix3x3-val :lambda-list '(m))
(cl:defmethod matrix3x3-val ((m <Matrix3f>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:matrix3x3-val is deprecated.  Use all_msgs-msg:matrix3x3 instead.")
  (matrix3x3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Matrix3f>) ostream)
  "Serializes a message object of type '<Matrix3f>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'matrix3x3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'matrix3x3))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Matrix3f>) istream)
  "Deserializes a message object of type '<Matrix3f>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'matrix3x3) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'matrix3x3)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:Float32))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Matrix3f>)))
  "Returns string type for a message object of type '<Matrix3f>"
  "all_msgs/Matrix3f")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Matrix3f)))
  "Returns string type for a message object of type 'Matrix3f"
  "all_msgs/Matrix3f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Matrix3f>)))
  "Returns md5sum for a message object of type '<Matrix3f>"
  "f92b4745b327860ddb3bbad95d45b5bf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Matrix3f)))
  "Returns md5sum for a message object of type 'Matrix3f"
  "f92b4745b327860ddb3bbad95d45b5bf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Matrix3f>)))
  "Returns full string definition for message of type '<Matrix3f>"
  (cl:format cl:nil "std_msgs/Float32[] matrix3x3 ~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Matrix3f)))
  "Returns full string definition for message of type 'Matrix3f"
  (cl:format cl:nil "std_msgs/Float32[] matrix3x3 ~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Matrix3f>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'matrix3x3) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Matrix3f>))
  "Converts a ROS message object to a list"
  (cl:list 'Matrix3f
    (cl:cons ':matrix3x3 (matrix3x3 msg))
))
