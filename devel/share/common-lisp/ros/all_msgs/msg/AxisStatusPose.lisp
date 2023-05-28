; Auto-generated. Do not edit!


(cl:in-package all_msgs-msg)


;//! \htmlinclude AxisStatusPose.msg.html

(cl:defclass <AxisStatusPose> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (pose
    :reader pose
    :initarg :pose
    :type all_msgs-msg:Pose
    :initform (cl:make-instance 'all_msgs-msg:Pose)))
)

(cl:defclass AxisStatusPose (<AxisStatusPose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AxisStatusPose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AxisStatusPose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name all_msgs-msg:<AxisStatusPose> is deprecated: use all_msgs-msg:AxisStatusPose instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <AxisStatusPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:status-val is deprecated.  Use all_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <AxisStatusPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:pose-val is deprecated.  Use all_msgs-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AxisStatusPose>) ostream)
  "Serializes a message object of type '<AxisStatusPose>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AxisStatusPose>) istream)
  "Deserializes a message object of type '<AxisStatusPose>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AxisStatusPose>)))
  "Returns string type for a message object of type '<AxisStatusPose>"
  "all_msgs/AxisStatusPose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AxisStatusPose)))
  "Returns string type for a message object of type 'AxisStatusPose"
  "all_msgs/AxisStatusPose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AxisStatusPose>)))
  "Returns md5sum for a message object of type '<AxisStatusPose>"
  "1987389e84dad24c41bcd78726580d20")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AxisStatusPose)))
  "Returns md5sum for a message object of type 'AxisStatusPose"
  "1987389e84dad24c41bcd78726580d20")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AxisStatusPose>)))
  "Returns full string definition for message of type '<AxisStatusPose>"
  (cl:format cl:nil "std_msgs/Int32 status ~%Pose           pose ~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: all_msgs/Pose~%std_msgs/Float32 x ~%std_msgs/Float32 y ~%std_msgs/Float32 z ~%~%std_msgs/Float32 roll ~%std_msgs/Float32 pitch~%std_msgs/Float32 yaw~%~%std_msgs/Int32 status ~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AxisStatusPose)))
  "Returns full string definition for message of type 'AxisStatusPose"
  (cl:format cl:nil "std_msgs/Int32 status ~%Pose           pose ~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: all_msgs/Pose~%std_msgs/Float32 x ~%std_msgs/Float32 y ~%std_msgs/Float32 z ~%~%std_msgs/Float32 roll ~%std_msgs/Float32 pitch~%std_msgs/Float32 yaw~%~%std_msgs/Int32 status ~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AxisStatusPose>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AxisStatusPose>))
  "Converts a ROS message object to a list"
  (cl:list 'AxisStatusPose
    (cl:cons ':status (status msg))
    (cl:cons ':pose (pose msg))
))
