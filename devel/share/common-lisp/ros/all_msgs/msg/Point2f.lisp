; Auto-generated. Do not edit!


(cl:in-package all_msgs-msg)


;//! \htmlinclude Point2f.msg.html

(cl:defclass <Point2f> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (y
    :reader y
    :initarg :y
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32)))
)

(cl:defclass Point2f (<Point2f>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Point2f>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Point2f)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name all_msgs-msg:<Point2f> is deprecated: use all_msgs-msg:Point2f instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Point2f>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:x-val is deprecated.  Use all_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Point2f>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:y-val is deprecated.  Use all_msgs-msg:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Point2f>) ostream)
  "Serializes a message object of type '<Point2f>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'y) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Point2f>) istream)
  "Deserializes a message object of type '<Point2f>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'y) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Point2f>)))
  "Returns string type for a message object of type '<Point2f>"
  "all_msgs/Point2f")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Point2f)))
  "Returns string type for a message object of type 'Point2f"
  "all_msgs/Point2f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Point2f>)))
  "Returns md5sum for a message object of type '<Point2f>"
  "baababb5c5dd8e2ace650c8c021e6efe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Point2f)))
  "Returns md5sum for a message object of type 'Point2f"
  "baababb5c5dd8e2ace650c8c021e6efe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Point2f>)))
  "Returns full string definition for message of type '<Point2f>"
  (cl:format cl:nil "std_msgs/Float32 x ~%std_msgs/Float32 y ~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Point2f)))
  "Returns full string definition for message of type 'Point2f"
  (cl:format cl:nil "std_msgs/Float32 x ~%std_msgs/Float32 y ~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Point2f>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'y))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Point2f>))
  "Converts a ROS message object to a list"
  (cl:list 'Point2f
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
