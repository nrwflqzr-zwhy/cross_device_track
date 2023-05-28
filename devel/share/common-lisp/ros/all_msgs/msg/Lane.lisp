; Auto-generated. Do not edit!


(cl:in-package all_msgs-msg)


;//! \htmlinclude Lane.msg.html

(cl:defclass <Lane> (roslisp-msg-protocol:ros-message)
  ((lane_id
    :reader lane_id
    :initarg :lane_id
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (curve
    :reader curve
    :initarg :curve
    :type all_msgs-msg:Curve
    :initform (cl:make-instance 'all_msgs-msg:Curve))
   (end_points
    :reader end_points
    :initarg :end_points
    :type all_msgs-msg:EndPoints
    :initform (cl:make-instance 'all_msgs-msg:EndPoints))
   (measure_status
    :reader measure_status
    :initarg :measure_status
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (confidence
    :reader confidence
    :initarg :confidence
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32)))
)

(cl:defclass Lane (<Lane>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Lane>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Lane)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name all_msgs-msg:<Lane> is deprecated: use all_msgs-msg:Lane instead.")))

(cl:ensure-generic-function 'lane_id-val :lambda-list '(m))
(cl:defmethod lane_id-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:lane_id-val is deprecated.  Use all_msgs-msg:lane_id instead.")
  (lane_id m))

(cl:ensure-generic-function 'curve-val :lambda-list '(m))
(cl:defmethod curve-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:curve-val is deprecated.  Use all_msgs-msg:curve instead.")
  (curve m))

(cl:ensure-generic-function 'end_points-val :lambda-list '(m))
(cl:defmethod end_points-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:end_points-val is deprecated.  Use all_msgs-msg:end_points instead.")
  (end_points m))

(cl:ensure-generic-function 'measure_status-val :lambda-list '(m))
(cl:defmethod measure_status-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:measure_status-val is deprecated.  Use all_msgs-msg:measure_status instead.")
  (measure_status m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:confidence-val is deprecated.  Use all_msgs-msg:confidence instead.")
  (confidence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Lane>) ostream)
  "Serializes a message object of type '<Lane>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lane_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'curve) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'end_points) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'measure_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'confidence) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Lane>) istream)
  "Deserializes a message object of type '<Lane>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lane_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'curve) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'end_points) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'measure_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'confidence) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Lane>)))
  "Returns string type for a message object of type '<Lane>"
  "all_msgs/Lane")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Lane)))
  "Returns string type for a message object of type 'Lane"
  "all_msgs/Lane")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Lane>)))
  "Returns md5sum for a message object of type '<Lane>"
  "fd19b0521fb882c8cb26592918c30eb4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Lane)))
  "Returns md5sum for a message object of type 'Lane"
  "fd19b0521fb882c8cb26592918c30eb4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Lane>)))
  "Returns full string definition for message of type '<Lane>"
  (cl:format cl:nil "std_msgs/Int32   lane_id ~%Curve            curve ~%EndPoints        end_points ~%std_msgs/Int32   measure_status  ~%std_msgs/Float32 confidence ~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: all_msgs/Curve~%std_msgs/Float32 x_start ~%std_msgs/Float32 x_end ~%std_msgs/Float32 a ~%std_msgs/Float32 b ~%std_msgs/Float32 c ~%std_msgs/Float32 d ~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: all_msgs/EndPoints~%Point2f start ~%Point2f end ~%~%================================================================================~%MSG: all_msgs/Point2f~%std_msgs/Float32 x ~%std_msgs/Float32 y ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Lane)))
  "Returns full string definition for message of type 'Lane"
  (cl:format cl:nil "std_msgs/Int32   lane_id ~%Curve            curve ~%EndPoints        end_points ~%std_msgs/Int32   measure_status  ~%std_msgs/Float32 confidence ~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: all_msgs/Curve~%std_msgs/Float32 x_start ~%std_msgs/Float32 x_end ~%std_msgs/Float32 a ~%std_msgs/Float32 b ~%std_msgs/Float32 c ~%std_msgs/Float32 d ~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: all_msgs/EndPoints~%Point2f start ~%Point2f end ~%~%================================================================================~%MSG: all_msgs/Point2f~%std_msgs/Float32 x ~%std_msgs/Float32 y ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Lane>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lane_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'curve))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'end_points))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'measure_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'confidence))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Lane>))
  "Converts a ROS message object to a list"
  (cl:list 'Lane
    (cl:cons ':lane_id (lane_id msg))
    (cl:cons ':curve (curve msg))
    (cl:cons ':end_points (end_points msg))
    (cl:cons ':measure_status (measure_status msg))
    (cl:cons ':confidence (confidence msg))
))
