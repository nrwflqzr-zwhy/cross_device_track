; Auto-generated. Do not edit!


(cl:in-package all_msgs-msg)


;//! \htmlinclude PoseMap.msg.html

(cl:defclass <PoseMap> (roslisp-msg-protocol:ros-message)
  ((status_poses
    :reader status_poses
    :initarg :status_poses
    :type (cl:vector all_msgs-msg:AxisStatusPose)
   :initform (cl:make-array 0 :element-type 'all_msgs-msg:AxisStatusPose :initial-element (cl:make-instance 'all_msgs-msg:AxisStatusPose))))
)

(cl:defclass PoseMap (<PoseMap>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PoseMap>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PoseMap)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name all_msgs-msg:<PoseMap> is deprecated: use all_msgs-msg:PoseMap instead.")))

(cl:ensure-generic-function 'status_poses-val :lambda-list '(m))
(cl:defmethod status_poses-val ((m <PoseMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:status_poses-val is deprecated.  Use all_msgs-msg:status_poses instead.")
  (status_poses m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PoseMap>) ostream)
  "Serializes a message object of type '<PoseMap>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'status_poses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'status_poses))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PoseMap>) istream)
  "Deserializes a message object of type '<PoseMap>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'status_poses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'status_poses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'all_msgs-msg:AxisStatusPose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PoseMap>)))
  "Returns string type for a message object of type '<PoseMap>"
  "all_msgs/PoseMap")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PoseMap)))
  "Returns string type for a message object of type 'PoseMap"
  "all_msgs/PoseMap")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PoseMap>)))
  "Returns md5sum for a message object of type '<PoseMap>"
  "51fc7df0ce0cb8096f687175e8cb1f26")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PoseMap)))
  "Returns md5sum for a message object of type 'PoseMap"
  "51fc7df0ce0cb8096f687175e8cb1f26")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PoseMap>)))
  "Returns full string definition for message of type '<PoseMap>"
  (cl:format cl:nil "AxisStatusPose[] status_poses ~%~%================================================================================~%MSG: all_msgs/AxisStatusPose~%std_msgs/Int32 status ~%Pose           pose ~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: all_msgs/Pose~%std_msgs/Float32 x ~%std_msgs/Float32 y ~%std_msgs/Float32 z ~%~%std_msgs/Float32 roll ~%std_msgs/Float32 pitch~%std_msgs/Float32 yaw~%~%std_msgs/Int32 status ~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PoseMap)))
  "Returns full string definition for message of type 'PoseMap"
  (cl:format cl:nil "AxisStatusPose[] status_poses ~%~%================================================================================~%MSG: all_msgs/AxisStatusPose~%std_msgs/Int32 status ~%Pose           pose ~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: all_msgs/Pose~%std_msgs/Float32 x ~%std_msgs/Float32 y ~%std_msgs/Float32 z ~%~%std_msgs/Float32 roll ~%std_msgs/Float32 pitch~%std_msgs/Float32 yaw~%~%std_msgs/Int32 status ~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PoseMap>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'status_poses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PoseMap>))
  "Converts a ROS message object to a list"
  (cl:list 'PoseMap
    (cl:cons ':status_poses (status_poses msg))
))
