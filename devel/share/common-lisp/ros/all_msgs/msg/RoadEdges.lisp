; Auto-generated. Do not edit!


(cl:in-package all_msgs-msg)


;//! \htmlinclude RoadEdges.msg.html

(cl:defclass <RoadEdges> (roslisp-msg-protocol:ros-message)
  ((curbs
    :reader curbs
    :initarg :curbs
    :type (cl:vector all_msgs-msg:RoadEdge)
   :initform (cl:make-array 0 :element-type 'all_msgs-msg:RoadEdge :initial-element (cl:make-instance 'all_msgs-msg:RoadEdge))))
)

(cl:defclass RoadEdges (<RoadEdges>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoadEdges>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoadEdges)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name all_msgs-msg:<RoadEdges> is deprecated: use all_msgs-msg:RoadEdges instead.")))

(cl:ensure-generic-function 'curbs-val :lambda-list '(m))
(cl:defmethod curbs-val ((m <RoadEdges>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:curbs-val is deprecated.  Use all_msgs-msg:curbs instead.")
  (curbs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoadEdges>) ostream)
  "Serializes a message object of type '<RoadEdges>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'curbs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'curbs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoadEdges>) istream)
  "Deserializes a message object of type '<RoadEdges>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'curbs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'curbs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'all_msgs-msg:RoadEdge))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoadEdges>)))
  "Returns string type for a message object of type '<RoadEdges>"
  "all_msgs/RoadEdges")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoadEdges)))
  "Returns string type for a message object of type 'RoadEdges"
  "all_msgs/RoadEdges")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoadEdges>)))
  "Returns md5sum for a message object of type '<RoadEdges>"
  "5f84b2030d3a2bc9898f012cbd7a61c1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoadEdges)))
  "Returns md5sum for a message object of type 'RoadEdges"
  "5f84b2030d3a2bc9898f012cbd7a61c1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoadEdges>)))
  "Returns full string definition for message of type '<RoadEdges>"
  (cl:format cl:nil "RoadEdge[] curbs~%~%================================================================================~%MSG: all_msgs/RoadEdge~%std_msgs/Int32   roadedge_id  ~%Curve            curve ~%EndPoints        end_points ~%std_msgs/Int32   measure_status  ~%std_msgs/Float32 confidence ~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: all_msgs/Curve~%std_msgs/Float32 x_start ~%std_msgs/Float32 x_end ~%std_msgs/Float32 a ~%std_msgs/Float32 b ~%std_msgs/Float32 c ~%std_msgs/Float32 d ~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: all_msgs/EndPoints~%Point2f start ~%Point2f end ~%~%================================================================================~%MSG: all_msgs/Point2f~%std_msgs/Float32 x ~%std_msgs/Float32 y ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoadEdges)))
  "Returns full string definition for message of type 'RoadEdges"
  (cl:format cl:nil "RoadEdge[] curbs~%~%================================================================================~%MSG: all_msgs/RoadEdge~%std_msgs/Int32   roadedge_id  ~%Curve            curve ~%EndPoints        end_points ~%std_msgs/Int32   measure_status  ~%std_msgs/Float32 confidence ~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: all_msgs/Curve~%std_msgs/Float32 x_start ~%std_msgs/Float32 x_end ~%std_msgs/Float32 a ~%std_msgs/Float32 b ~%std_msgs/Float32 c ~%std_msgs/Float32 d ~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: all_msgs/EndPoints~%Point2f start ~%Point2f end ~%~%================================================================================~%MSG: all_msgs/Point2f~%std_msgs/Float32 x ~%std_msgs/Float32 y ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoadEdges>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'curbs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoadEdges>))
  "Converts a ROS message object to a list"
  (cl:list 'RoadEdges
    (cl:cons ':curbs (curbs msg))
))
