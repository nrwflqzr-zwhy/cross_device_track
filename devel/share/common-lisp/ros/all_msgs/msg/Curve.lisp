; Auto-generated. Do not edit!


(cl:in-package all_msgs-msg)


;//! \htmlinclude Curve.msg.html

(cl:defclass <Curve> (roslisp-msg-protocol:ros-message)
  ((x_start
    :reader x_start
    :initarg :x_start
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (x_end
    :reader x_end
    :initarg :x_end
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (a
    :reader a
    :initarg :a
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (b
    :reader b
    :initarg :b
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (c
    :reader c
    :initarg :c
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (d
    :reader d
    :initarg :d
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32)))
)

(cl:defclass Curve (<Curve>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Curve>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Curve)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name all_msgs-msg:<Curve> is deprecated: use all_msgs-msg:Curve instead.")))

(cl:ensure-generic-function 'x_start-val :lambda-list '(m))
(cl:defmethod x_start-val ((m <Curve>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:x_start-val is deprecated.  Use all_msgs-msg:x_start instead.")
  (x_start m))

(cl:ensure-generic-function 'x_end-val :lambda-list '(m))
(cl:defmethod x_end-val ((m <Curve>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:x_end-val is deprecated.  Use all_msgs-msg:x_end instead.")
  (x_end m))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <Curve>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:a-val is deprecated.  Use all_msgs-msg:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <Curve>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:b-val is deprecated.  Use all_msgs-msg:b instead.")
  (b m))

(cl:ensure-generic-function 'c-val :lambda-list '(m))
(cl:defmethod c-val ((m <Curve>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:c-val is deprecated.  Use all_msgs-msg:c instead.")
  (c m))

(cl:ensure-generic-function 'd-val :lambda-list '(m))
(cl:defmethod d-val ((m <Curve>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:d-val is deprecated.  Use all_msgs-msg:d instead.")
  (d m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Curve>) ostream)
  "Serializes a message object of type '<Curve>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'x_start) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'x_end) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'a) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'b) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'c) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'd) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Curve>) istream)
  "Deserializes a message object of type '<Curve>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'x_start) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'x_end) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'a) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'b) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'c) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'd) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Curve>)))
  "Returns string type for a message object of type '<Curve>"
  "all_msgs/Curve")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Curve)))
  "Returns string type for a message object of type 'Curve"
  "all_msgs/Curve")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Curve>)))
  "Returns md5sum for a message object of type '<Curve>"
  "9a544adf692f69bcc100499d862d09b5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Curve)))
  "Returns md5sum for a message object of type 'Curve"
  "9a544adf692f69bcc100499d862d09b5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Curve>)))
  "Returns full string definition for message of type '<Curve>"
  (cl:format cl:nil "std_msgs/Float32 x_start ~%std_msgs/Float32 x_end ~%std_msgs/Float32 a ~%std_msgs/Float32 b ~%std_msgs/Float32 c ~%std_msgs/Float32 d ~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Curve)))
  "Returns full string definition for message of type 'Curve"
  (cl:format cl:nil "std_msgs/Float32 x_start ~%std_msgs/Float32 x_end ~%std_msgs/Float32 a ~%std_msgs/Float32 b ~%std_msgs/Float32 c ~%std_msgs/Float32 d ~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Curve>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'x_start))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'x_end))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'a))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'b))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'c))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'd))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Curve>))
  "Converts a ROS message object to a list"
  (cl:list 'Curve
    (cl:cons ':x_start (x_start msg))
    (cl:cons ':x_end (x_end msg))
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
    (cl:cons ':c (c msg))
    (cl:cons ':d (d msg))
))
