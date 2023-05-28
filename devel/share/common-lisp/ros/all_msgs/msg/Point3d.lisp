; Auto-generated. Do not edit!


(cl:in-package all_msgs-msg)


;//! \htmlinclude Point3d.msg.html

(cl:defclass <Point3d> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (y
    :reader y
    :initarg :y
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (z
    :reader z
    :initarg :z
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64)))
)

(cl:defclass Point3d (<Point3d>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Point3d>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Point3d)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name all_msgs-msg:<Point3d> is deprecated: use all_msgs-msg:Point3d instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Point3d>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:x-val is deprecated.  Use all_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Point3d>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:y-val is deprecated.  Use all_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <Point3d>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:z-val is deprecated.  Use all_msgs-msg:z instead.")
  (z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Point3d>) ostream)
  "Serializes a message object of type '<Point3d>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'z) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Point3d>) istream)
  "Deserializes a message object of type '<Point3d>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'z) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Point3d>)))
  "Returns string type for a message object of type '<Point3d>"
  "all_msgs/Point3d")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Point3d)))
  "Returns string type for a message object of type 'Point3d"
  "all_msgs/Point3d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Point3d>)))
  "Returns md5sum for a message object of type '<Point3d>"
  "c5166234939ddbad7844e2026f79c5fa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Point3d)))
  "Returns md5sum for a message object of type 'Point3d"
  "c5166234939ddbad7844e2026f79c5fa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Point3d>)))
  "Returns full string definition for message of type '<Point3d>"
  (cl:format cl:nil "std_msgs/Float64 x ~%std_msgs/Float64 y ~%std_msgs/Float64 z ~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Point3d)))
  "Returns full string definition for message of type 'Point3d"
  (cl:format cl:nil "std_msgs/Float64 x ~%std_msgs/Float64 y ~%std_msgs/Float64 z ~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Point3d>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'z))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Point3d>))
  "Converts a ROS message object to a list"
  (cl:list 'Point3d
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
))
