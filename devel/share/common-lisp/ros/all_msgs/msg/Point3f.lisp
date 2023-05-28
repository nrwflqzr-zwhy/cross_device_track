; Auto-generated. Do not edit!


(cl:in-package all_msgs-msg)


;//! \htmlinclude Point3f.msg.html

(cl:defclass <Point3f> (roslisp-msg-protocol:ros-message)
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
    :initform (cl:make-instance 'std_msgs-msg:Float32)))
)

(cl:defclass Point3f (<Point3f>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Point3f>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Point3f)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name all_msgs-msg:<Point3f> is deprecated: use all_msgs-msg:Point3f instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Point3f>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:x-val is deprecated.  Use all_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Point3f>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:y-val is deprecated.  Use all_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <Point3f>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:z-val is deprecated.  Use all_msgs-msg:z instead.")
  (z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Point3f>) ostream)
  "Serializes a message object of type '<Point3f>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'z) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Point3f>) istream)
  "Deserializes a message object of type '<Point3f>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'z) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Point3f>)))
  "Returns string type for a message object of type '<Point3f>"
  "all_msgs/Point3f")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Point3f)))
  "Returns string type for a message object of type 'Point3f"
  "all_msgs/Point3f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Point3f>)))
  "Returns md5sum for a message object of type '<Point3f>"
  "091cca004b733810eb3a4ffef5db3158")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Point3f)))
  "Returns md5sum for a message object of type 'Point3f"
  "091cca004b733810eb3a4ffef5db3158")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Point3f>)))
  "Returns full string definition for message of type '<Point3f>"
  (cl:format cl:nil "std_msgs/Float32 x ~%std_msgs/Float32 y ~%std_msgs/Float32 z ~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Point3f)))
  "Returns full string definition for message of type 'Point3f"
  (cl:format cl:nil "std_msgs/Float32 x ~%std_msgs/Float32 y ~%std_msgs/Float32 z ~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Point3f>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'z))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Point3f>))
  "Converts a ROS message object to a list"
  (cl:list 'Point3f
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
))
