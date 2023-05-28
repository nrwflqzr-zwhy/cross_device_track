; Auto-generated. Do not edit!


(cl:in-package all_msgs-msg)


;//! \htmlinclude Point4f.msg.html

(cl:defclass <Point4f> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (y
    :reader y
    :initarg :y
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (z
    :reader z
    :initarg :z
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (i
    :reader i
    :initarg :i
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32)))
)

(cl:defclass Point4f (<Point4f>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Point4f>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Point4f)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name all_msgs-msg:<Point4f> is deprecated: use all_msgs-msg:Point4f instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Point4f>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:x-val is deprecated.  Use all_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Point4f>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:y-val is deprecated.  Use all_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <Point4f>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:z-val is deprecated.  Use all_msgs-msg:z instead.")
  (z m))

(cl:ensure-generic-function 'i-val :lambda-list '(m))
(cl:defmethod i-val ((m <Point4f>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:i-val is deprecated.  Use all_msgs-msg:i instead.")
  (i m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Point4f>) ostream)
  "Serializes a message object of type '<Point4f>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'z) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'i) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Point4f>) istream)
  "Deserializes a message object of type '<Point4f>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'z) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'i) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Point4f>)))
  "Returns string type for a message object of type '<Point4f>"
  "all_msgs/Point4f")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Point4f)))
  "Returns string type for a message object of type 'Point4f"
  "all_msgs/Point4f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Point4f>)))
  "Returns md5sum for a message object of type '<Point4f>"
  "4743d309d7a476dab23f1b8e2261bd00")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Point4f)))
  "Returns md5sum for a message object of type 'Point4f"
  "4743d309d7a476dab23f1b8e2261bd00")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Point4f>)))
  "Returns full string definition for message of type '<Point4f>"
  (cl:format cl:nil "std_msgs/Float32 x ~%std_msgs/Float32 y ~%std_msgs/Float32 z ~%std_msgs/Float32 i ~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Point4f)))
  "Returns full string definition for message of type 'Point4f"
  (cl:format cl:nil "std_msgs/Float32 x ~%std_msgs/Float32 y ~%std_msgs/Float32 z ~%std_msgs/Float32 i ~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Point4f>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'z))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'i))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Point4f>))
  "Converts a ROS message object to a list"
  (cl:list 'Point4f
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':i (i msg))
))
