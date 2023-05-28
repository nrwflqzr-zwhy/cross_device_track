; Auto-generated. Do not edit!


(cl:in-package all_msgs-msg)


;//! \htmlinclude Lanes.msg.html

(cl:defclass <Lanes> (roslisp-msg-protocol:ros-message)
  ((lanes
    :reader lanes
    :initarg :lanes
    :type (cl:vector all_msgs-msg:Lane)
   :initform (cl:make-array 0 :element-type 'all_msgs-msg:Lane :initial-element (cl:make-instance 'all_msgs-msg:Lane))))
)

(cl:defclass Lanes (<Lanes>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Lanes>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Lanes)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name all_msgs-msg:<Lanes> is deprecated: use all_msgs-msg:Lanes instead.")))

(cl:ensure-generic-function 'lanes-val :lambda-list '(m))
(cl:defmethod lanes-val ((m <Lanes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:lanes-val is deprecated.  Use all_msgs-msg:lanes instead.")
  (lanes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Lanes>) ostream)
  "Serializes a message object of type '<Lanes>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lanes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lanes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Lanes>) istream)
  "Deserializes a message object of type '<Lanes>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lanes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lanes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'all_msgs-msg:Lane))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Lanes>)))
  "Returns string type for a message object of type '<Lanes>"
  "all_msgs/Lanes")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Lanes)))
  "Returns string type for a message object of type 'Lanes"
  "all_msgs/Lanes")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Lanes>)))
  "Returns md5sum for a message object of type '<Lanes>"
  "8c91e3b4d885a65b5ff2c91de75a06a9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Lanes)))
  "Returns md5sum for a message object of type 'Lanes"
  "8c91e3b4d885a65b5ff2c91de75a06a9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Lanes>)))
  "Returns full string definition for message of type '<Lanes>"
  (cl:format cl:nil "Lane[] lanes~%================================================================================~%MSG: all_msgs/Lane~%std_msgs/Int32   lane_id ~%Curve            curve ~%EndPoints        end_points ~%std_msgs/Int32   measure_status  ~%std_msgs/Float32 confidence ~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: all_msgs/Curve~%std_msgs/Float32 x_start ~%std_msgs/Float32 x_end ~%std_msgs/Float32 a ~%std_msgs/Float32 b ~%std_msgs/Float32 c ~%std_msgs/Float32 d ~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: all_msgs/EndPoints~%Point2f start ~%Point2f end ~%~%================================================================================~%MSG: all_msgs/Point2f~%std_msgs/Float32 x ~%std_msgs/Float32 y ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Lanes)))
  "Returns full string definition for message of type 'Lanes"
  (cl:format cl:nil "Lane[] lanes~%================================================================================~%MSG: all_msgs/Lane~%std_msgs/Int32   lane_id ~%Curve            curve ~%EndPoints        end_points ~%std_msgs/Int32   measure_status  ~%std_msgs/Float32 confidence ~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: all_msgs/Curve~%std_msgs/Float32 x_start ~%std_msgs/Float32 x_end ~%std_msgs/Float32 a ~%std_msgs/Float32 b ~%std_msgs/Float32 c ~%std_msgs/Float32 d ~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: all_msgs/EndPoints~%Point2f start ~%Point2f end ~%~%================================================================================~%MSG: all_msgs/Point2f~%std_msgs/Float32 x ~%std_msgs/Float32 y ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Lanes>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lanes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Lanes>))
  "Converts a ROS message object to a list"
  (cl:list 'Lanes
    (cl:cons ':lanes (lanes msg))
))
