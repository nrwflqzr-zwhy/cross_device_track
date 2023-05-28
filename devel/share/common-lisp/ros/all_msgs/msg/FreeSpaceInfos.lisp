; Auto-generated. Do not edit!


(cl:in-package all_msgs-msg)


;//! \htmlinclude FreeSpaceInfos.msg.html

(cl:defclass <FreeSpaceInfos> (roslisp-msg-protocol:ros-message)
  ((fs_pts
    :reader fs_pts
    :initarg :fs_pts
    :type (cl:vector all_msgs-msg:Point3f)
   :initform (cl:make-array 0 :element-type 'all_msgs-msg:Point3f :initial-element (cl:make-instance 'all_msgs-msg:Point3f)))
   (fs_confidence
    :reader fs_confidence
    :initarg :fs_confidence
    :type (cl:vector std_msgs-msg:Float32)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:Float32 :initial-element (cl:make-instance 'std_msgs-msg:Float32))))
)

(cl:defclass FreeSpaceInfos (<FreeSpaceInfos>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FreeSpaceInfos>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FreeSpaceInfos)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name all_msgs-msg:<FreeSpaceInfos> is deprecated: use all_msgs-msg:FreeSpaceInfos instead.")))

(cl:ensure-generic-function 'fs_pts-val :lambda-list '(m))
(cl:defmethod fs_pts-val ((m <FreeSpaceInfos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:fs_pts-val is deprecated.  Use all_msgs-msg:fs_pts instead.")
  (fs_pts m))

(cl:ensure-generic-function 'fs_confidence-val :lambda-list '(m))
(cl:defmethod fs_confidence-val ((m <FreeSpaceInfos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:fs_confidence-val is deprecated.  Use all_msgs-msg:fs_confidence instead.")
  (fs_confidence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FreeSpaceInfos>) ostream)
  "Serializes a message object of type '<FreeSpaceInfos>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'fs_pts))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'fs_pts))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'fs_confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'fs_confidence))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FreeSpaceInfos>) istream)
  "Deserializes a message object of type '<FreeSpaceInfos>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'fs_pts) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'fs_pts)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'all_msgs-msg:Point3f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'fs_confidence) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'fs_confidence)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:Float32))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FreeSpaceInfos>)))
  "Returns string type for a message object of type '<FreeSpaceInfos>"
  "all_msgs/FreeSpaceInfos")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FreeSpaceInfos)))
  "Returns string type for a message object of type 'FreeSpaceInfos"
  "all_msgs/FreeSpaceInfos")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FreeSpaceInfos>)))
  "Returns md5sum for a message object of type '<FreeSpaceInfos>"
  "a60987ee9bd368f8db4ac0adf7d909b0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FreeSpaceInfos)))
  "Returns md5sum for a message object of type 'FreeSpaceInfos"
  "a60987ee9bd368f8db4ac0adf7d909b0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FreeSpaceInfos>)))
  "Returns full string definition for message of type '<FreeSpaceInfos>"
  (cl:format cl:nil "Point3f[]        fs_pts~%std_msgs/Float32[] fs_confidence ~%~%================================================================================~%MSG: all_msgs/Point3f~%std_msgs/Float32 x ~%std_msgs/Float32 y ~%std_msgs/Float32 z ~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FreeSpaceInfos)))
  "Returns full string definition for message of type 'FreeSpaceInfos"
  (cl:format cl:nil "Point3f[]        fs_pts~%std_msgs/Float32[] fs_confidence ~%~%================================================================================~%MSG: all_msgs/Point3f~%std_msgs/Float32 x ~%std_msgs/Float32 y ~%std_msgs/Float32 z ~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FreeSpaceInfos>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'fs_pts) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'fs_confidence) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FreeSpaceInfos>))
  "Converts a ROS message object to a list"
  (cl:list 'FreeSpaceInfos
    (cl:cons ':fs_pts (fs_pts msg))
    (cl:cons ':fs_confidence (fs_confidence msg))
))
