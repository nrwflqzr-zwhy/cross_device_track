; Auto-generated. Do not edit!


(cl:in-package all_msgs-msg)


;//! \htmlinclude CoreInfo.msg.html

(cl:defclass <CoreInfo> (roslisp-msg-protocol:ros-message)
  ((timestamp
    :reader timestamp
    :initarg :timestamp
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (priority_id
    :reader priority_id
    :initarg :priority_id
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (exist_confidence
    :reader exist_confidence
    :initarg :exist_confidence
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (center
    :reader center
    :initarg :center
    :type all_msgs-msg:Point3f
    :initform (cl:make-instance 'all_msgs-msg:Point3f))
   (center_cov
    :reader center_cov
    :initarg :center_cov
    :type all_msgs-msg:Point3f
    :initform (cl:make-instance 'all_msgs-msg:Point3f))
   (size
    :reader size
    :initarg :size
    :type all_msgs-msg:Point3f
    :initform (cl:make-instance 'all_msgs-msg:Point3f))
   (size_cov
    :reader size_cov
    :initarg :size_cov
    :type all_msgs-msg:Point3f
    :initform (cl:make-instance 'all_msgs-msg:Point3f))
   (direction
    :reader direction
    :initarg :direction
    :type all_msgs-msg:Point3f
    :initform (cl:make-instance 'all_msgs-msg:Point3f))
   (direction_cov
    :reader direction_cov
    :initarg :direction_cov
    :type all_msgs-msg:Point3f
    :initform (cl:make-instance 'all_msgs-msg:Point3f))
   (type
    :reader type
    :initarg :type
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (type_confidence
    :reader type_confidence
    :initarg :type_confidence
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (attention_type
    :reader attention_type
    :initarg :attention_type
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (motion_state
    :reader motion_state
    :initarg :motion_state
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (lane_pos
    :reader lane_pos
    :initarg :lane_pos
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (trakcer_id
    :reader trakcer_id
    :initarg :trakcer_id
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (age
    :reader age
    :initarg :age
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (velocity
    :reader velocity
    :initarg :velocity
    :type all_msgs-msg:Point3f
    :initform (cl:make-instance 'all_msgs-msg:Point3f))
   (velocity_cov
    :reader velocity_cov
    :initarg :velocity_cov
    :type all_msgs-msg:Point3f
    :initform (cl:make-instance 'all_msgs-msg:Point3f))
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type all_msgs-msg:Point3f
    :initform (cl:make-instance 'all_msgs-msg:Point3f))
   (acceleration_cov
    :reader acceleration_cov
    :initarg :acceleration_cov
    :type all_msgs-msg:Point3f
    :initform (cl:make-instance 'all_msgs-msg:Point3f))
   (angle_velocity
    :reader angle_velocity
    :initarg :angle_velocity
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (angle_velocity_cov
    :reader angle_velocity_cov
    :initarg :angle_velocity_cov
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (angle_acceleration
    :reader angle_acceleration
    :initarg :angle_acceleration
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (angle_acceleration_cov
    :reader angle_acceleration_cov
    :initarg :angle_acceleration_cov
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (anchor
    :reader anchor
    :initarg :anchor
    :type all_msgs-msg:Point3f
    :initform (cl:make-instance 'all_msgs-msg:Point3f))
   (nearest_point
    :reader nearest_point
    :initarg :nearest_point
    :type all_msgs-msg:Point3f
    :initform (cl:make-instance 'all_msgs-msg:Point3f)))
)

(cl:defclass CoreInfo (<CoreInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CoreInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CoreInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name all_msgs-msg:<CoreInfo> is deprecated: use all_msgs-msg:CoreInfo instead.")))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <CoreInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:timestamp-val is deprecated.  Use all_msgs-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'priority_id-val :lambda-list '(m))
(cl:defmethod priority_id-val ((m <CoreInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:priority_id-val is deprecated.  Use all_msgs-msg:priority_id instead.")
  (priority_id m))

(cl:ensure-generic-function 'exist_confidence-val :lambda-list '(m))
(cl:defmethod exist_confidence-val ((m <CoreInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:exist_confidence-val is deprecated.  Use all_msgs-msg:exist_confidence instead.")
  (exist_confidence m))

(cl:ensure-generic-function 'center-val :lambda-list '(m))
(cl:defmethod center-val ((m <CoreInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:center-val is deprecated.  Use all_msgs-msg:center instead.")
  (center m))

(cl:ensure-generic-function 'center_cov-val :lambda-list '(m))
(cl:defmethod center_cov-val ((m <CoreInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:center_cov-val is deprecated.  Use all_msgs-msg:center_cov instead.")
  (center_cov m))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <CoreInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:size-val is deprecated.  Use all_msgs-msg:size instead.")
  (size m))

(cl:ensure-generic-function 'size_cov-val :lambda-list '(m))
(cl:defmethod size_cov-val ((m <CoreInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:size_cov-val is deprecated.  Use all_msgs-msg:size_cov instead.")
  (size_cov m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <CoreInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:direction-val is deprecated.  Use all_msgs-msg:direction instead.")
  (direction m))

(cl:ensure-generic-function 'direction_cov-val :lambda-list '(m))
(cl:defmethod direction_cov-val ((m <CoreInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:direction_cov-val is deprecated.  Use all_msgs-msg:direction_cov instead.")
  (direction_cov m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <CoreInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:type-val is deprecated.  Use all_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'type_confidence-val :lambda-list '(m))
(cl:defmethod type_confidence-val ((m <CoreInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:type_confidence-val is deprecated.  Use all_msgs-msg:type_confidence instead.")
  (type_confidence m))

(cl:ensure-generic-function 'attention_type-val :lambda-list '(m))
(cl:defmethod attention_type-val ((m <CoreInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:attention_type-val is deprecated.  Use all_msgs-msg:attention_type instead.")
  (attention_type m))

(cl:ensure-generic-function 'motion_state-val :lambda-list '(m))
(cl:defmethod motion_state-val ((m <CoreInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:motion_state-val is deprecated.  Use all_msgs-msg:motion_state instead.")
  (motion_state m))

(cl:ensure-generic-function 'lane_pos-val :lambda-list '(m))
(cl:defmethod lane_pos-val ((m <CoreInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:lane_pos-val is deprecated.  Use all_msgs-msg:lane_pos instead.")
  (lane_pos m))

(cl:ensure-generic-function 'trakcer_id-val :lambda-list '(m))
(cl:defmethod trakcer_id-val ((m <CoreInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:trakcer_id-val is deprecated.  Use all_msgs-msg:trakcer_id instead.")
  (trakcer_id m))

(cl:ensure-generic-function 'age-val :lambda-list '(m))
(cl:defmethod age-val ((m <CoreInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:age-val is deprecated.  Use all_msgs-msg:age instead.")
  (age m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <CoreInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:velocity-val is deprecated.  Use all_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'velocity_cov-val :lambda-list '(m))
(cl:defmethod velocity_cov-val ((m <CoreInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:velocity_cov-val is deprecated.  Use all_msgs-msg:velocity_cov instead.")
  (velocity_cov m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <CoreInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:acceleration-val is deprecated.  Use all_msgs-msg:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'acceleration_cov-val :lambda-list '(m))
(cl:defmethod acceleration_cov-val ((m <CoreInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:acceleration_cov-val is deprecated.  Use all_msgs-msg:acceleration_cov instead.")
  (acceleration_cov m))

(cl:ensure-generic-function 'angle_velocity-val :lambda-list '(m))
(cl:defmethod angle_velocity-val ((m <CoreInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:angle_velocity-val is deprecated.  Use all_msgs-msg:angle_velocity instead.")
  (angle_velocity m))

(cl:ensure-generic-function 'angle_velocity_cov-val :lambda-list '(m))
(cl:defmethod angle_velocity_cov-val ((m <CoreInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:angle_velocity_cov-val is deprecated.  Use all_msgs-msg:angle_velocity_cov instead.")
  (angle_velocity_cov m))

(cl:ensure-generic-function 'angle_acceleration-val :lambda-list '(m))
(cl:defmethod angle_acceleration-val ((m <CoreInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:angle_acceleration-val is deprecated.  Use all_msgs-msg:angle_acceleration instead.")
  (angle_acceleration m))

(cl:ensure-generic-function 'angle_acceleration_cov-val :lambda-list '(m))
(cl:defmethod angle_acceleration_cov-val ((m <CoreInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:angle_acceleration_cov-val is deprecated.  Use all_msgs-msg:angle_acceleration_cov instead.")
  (angle_acceleration_cov m))

(cl:ensure-generic-function 'anchor-val :lambda-list '(m))
(cl:defmethod anchor-val ((m <CoreInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:anchor-val is deprecated.  Use all_msgs-msg:anchor instead.")
  (anchor m))

(cl:ensure-generic-function 'nearest_point-val :lambda-list '(m))
(cl:defmethod nearest_point-val ((m <CoreInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:nearest_point-val is deprecated.  Use all_msgs-msg:nearest_point instead.")
  (nearest_point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CoreInfo>) ostream)
  "Serializes a message object of type '<CoreInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'timestamp) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'priority_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'exist_confidence) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'center) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'center_cov) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'size) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'size_cov) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'direction) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'direction_cov) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type_confidence) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'attention_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'motion_state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lane_pos) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trakcer_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'age) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity_cov) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration_cov) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angle_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angle_velocity_cov) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angle_acceleration) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angle_acceleration_cov) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'anchor) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'nearest_point) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CoreInfo>) istream)
  "Deserializes a message object of type '<CoreInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'timestamp) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'priority_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'exist_confidence) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'center) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'center_cov) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'size) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'size_cov) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'direction) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'direction_cov) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type_confidence) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'attention_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'motion_state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lane_pos) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trakcer_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'age) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity_cov) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration_cov) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angle_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angle_velocity_cov) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angle_acceleration) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angle_acceleration_cov) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'anchor) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'nearest_point) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CoreInfo>)))
  "Returns string type for a message object of type '<CoreInfo>"
  "all_msgs/CoreInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CoreInfo)))
  "Returns string type for a message object of type 'CoreInfo"
  "all_msgs/CoreInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CoreInfo>)))
  "Returns md5sum for a message object of type '<CoreInfo>"
  "7f0ff990bf278ab87b544233b3a79e70")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CoreInfo)))
  "Returns md5sum for a message object of type 'CoreInfo"
  "7f0ff990bf278ab87b544233b3a79e70")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CoreInfo>)))
  "Returns full string definition for message of type '<CoreInfo>"
  (cl:format cl:nil "std_msgs/Float64 timestamp~%~%std_msgs/Int32 priority_id~%std_msgs/Float32 exist_confidence ~%Point3f          center ~%Point3f          center_cov ~%Point3f          size ~%Point3f          size_cov ~%Point3f          direction ~%Point3f          direction_cov         ~%std_msgs/Int32   type ~%std_msgs/Float32 type_confidence ~%std_msgs/Int32   attention_type ~%std_msgs/Int32   motion_state~%std_msgs/Int32   lane_pos~%std_msgs/Int32   trakcer_id ~%std_msgs/Float64 age ~%Point3f          velocity ~%Point3f          velocity_cov ~%Point3f          acceleration ~%Point3f          acceleration_cov ~%std_msgs/Float32 angle_velocity ~%std_msgs/Float32 angle_velocity_cov ~%std_msgs/Float32 angle_acceleration ~%std_msgs/Float32 angle_acceleration_cov  ~%Point3f          anchor ~%Point3f          nearest_point ~%~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: all_msgs/Point3f~%std_msgs/Float32 x ~%std_msgs/Float32 y ~%std_msgs/Float32 z ~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CoreInfo)))
  "Returns full string definition for message of type 'CoreInfo"
  (cl:format cl:nil "std_msgs/Float64 timestamp~%~%std_msgs/Int32 priority_id~%std_msgs/Float32 exist_confidence ~%Point3f          center ~%Point3f          center_cov ~%Point3f          size ~%Point3f          size_cov ~%Point3f          direction ~%Point3f          direction_cov         ~%std_msgs/Int32   type ~%std_msgs/Float32 type_confidence ~%std_msgs/Int32   attention_type ~%std_msgs/Int32   motion_state~%std_msgs/Int32   lane_pos~%std_msgs/Int32   trakcer_id ~%std_msgs/Float64 age ~%Point3f          velocity ~%Point3f          velocity_cov ~%Point3f          acceleration ~%Point3f          acceleration_cov ~%std_msgs/Float32 angle_velocity ~%std_msgs/Float32 angle_velocity_cov ~%std_msgs/Float32 angle_acceleration ~%std_msgs/Float32 angle_acceleration_cov  ~%Point3f          anchor ~%Point3f          nearest_point ~%~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: all_msgs/Point3f~%std_msgs/Float32 x ~%std_msgs/Float32 y ~%std_msgs/Float32 z ~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CoreInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'timestamp))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'priority_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'exist_confidence))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'center))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'center_cov))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'size))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'size_cov))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'direction))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'direction_cov))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type_confidence))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'attention_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'motion_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lane_pos))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trakcer_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'age))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity_cov))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration_cov))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angle_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angle_velocity_cov))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angle_acceleration))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angle_acceleration_cov))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'anchor))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'nearest_point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CoreInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'CoreInfo
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':priority_id (priority_id msg))
    (cl:cons ':exist_confidence (exist_confidence msg))
    (cl:cons ':center (center msg))
    (cl:cons ':center_cov (center_cov msg))
    (cl:cons ':size (size msg))
    (cl:cons ':size_cov (size_cov msg))
    (cl:cons ':direction (direction msg))
    (cl:cons ':direction_cov (direction_cov msg))
    (cl:cons ':type (type msg))
    (cl:cons ':type_confidence (type_confidence msg))
    (cl:cons ':attention_type (attention_type msg))
    (cl:cons ':motion_state (motion_state msg))
    (cl:cons ':lane_pos (lane_pos msg))
    (cl:cons ':trakcer_id (trakcer_id msg))
    (cl:cons ':age (age msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':velocity_cov (velocity_cov msg))
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':acceleration_cov (acceleration_cov msg))
    (cl:cons ':angle_velocity (angle_velocity msg))
    (cl:cons ':angle_velocity_cov (angle_velocity_cov msg))
    (cl:cons ':angle_acceleration (angle_acceleration msg))
    (cl:cons ':angle_acceleration_cov (angle_acceleration_cov msg))
    (cl:cons ':anchor (anchor msg))
    (cl:cons ':nearest_point (nearest_point msg))
))
