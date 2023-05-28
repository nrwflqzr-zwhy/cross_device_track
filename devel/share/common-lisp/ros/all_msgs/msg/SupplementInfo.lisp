; Auto-generated. Do not edit!


(cl:in-package all_msgs-msg)


;//! \htmlinclude SupplementInfo.msg.html

(cl:defclass <SupplementInfo> (roslisp-msg-protocol:ros-message)
  ((unique_id
    :reader unique_id
    :initarg :unique_id
    :type std_msgs-msg:UInt32
    :initform (cl:make-instance 'std_msgs-msg:UInt32))
   (polygon
    :reader polygon
    :initarg :polygon
    :type (cl:vector all_msgs-msg:Point3f)
   :initform (cl:make-array 0 :element-type 'all_msgs-msg:Point3f :initial-element (cl:make-instance 'all_msgs-msg:Point3f)))
   (left_point_index
    :reader left_point_index
    :initarg :left_point_index
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (right_point_index
    :reader right_point_index
    :initarg :right_point_index
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (cloud_indices
    :reader cloud_indices
    :initarg :cloud_indices
    :type (cl:vector std_msgs-msg:Int32)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:Int32 :initial-element (cl:make-instance 'std_msgs-msg:Int32)))
   (latent_types
    :reader latent_types
    :initarg :latent_types
    :type (cl:vector std_msgs-msg:Float32)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:Float32 :initial-element (cl:make-instance 'std_msgs-msg:Float32)))
   (size_type
    :reader size_type
    :initarg :size_type
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (mode
    :reader mode
    :initarg :mode
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (in_roi
    :reader in_roi
    :initarg :in_roi
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (tracking_state
    :reader tracking_state
    :initarg :tracking_state
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (geo_center
    :reader geo_center
    :initarg :geo_center
    :type all_msgs-msg:Point3f
    :initform (cl:make-instance 'all_msgs-msg:Point3f))
   (geo_size
    :reader geo_size
    :initarg :geo_size
    :type all_msgs-msg:Point3f
    :initform (cl:make-instance 'all_msgs-msg:Point3f))
   (trajectory
    :reader trajectory
    :initarg :trajectory
    :type (cl:vector all_msgs-msg:Point3f)
   :initform (cl:make-array 0 :element-type 'all_msgs-msg:Point3f :initial-element (cl:make-instance 'all_msgs-msg:Point3f)))
   (history_velocity
    :reader history_velocity
    :initarg :history_velocity
    :type (cl:vector all_msgs-msg:Point3f)
   :initform (cl:make-array 0 :element-type 'all_msgs-msg:Point3f :initial-element (cl:make-instance 'all_msgs-msg:Point3f)))
   (history_type
    :reader history_type
    :initarg :history_type
    :type (cl:vector std_msgs-msg:Int32)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:Int32 :initial-element (cl:make-instance 'std_msgs-msg:Int32)))
   (gps_mode
    :reader gps_mode
    :initarg :gps_mode
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (gps_info
    :reader gps_info
    :initarg :gps_info
    :type all_msgs-msg:Point3d
    :initform (cl:make-instance 'all_msgs-msg:Point3d)))
)

(cl:defclass SupplementInfo (<SupplementInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SupplementInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SupplementInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name all_msgs-msg:<SupplementInfo> is deprecated: use all_msgs-msg:SupplementInfo instead.")))

(cl:ensure-generic-function 'unique_id-val :lambda-list '(m))
(cl:defmethod unique_id-val ((m <SupplementInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:unique_id-val is deprecated.  Use all_msgs-msg:unique_id instead.")
  (unique_id m))

(cl:ensure-generic-function 'polygon-val :lambda-list '(m))
(cl:defmethod polygon-val ((m <SupplementInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:polygon-val is deprecated.  Use all_msgs-msg:polygon instead.")
  (polygon m))

(cl:ensure-generic-function 'left_point_index-val :lambda-list '(m))
(cl:defmethod left_point_index-val ((m <SupplementInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:left_point_index-val is deprecated.  Use all_msgs-msg:left_point_index instead.")
  (left_point_index m))

(cl:ensure-generic-function 'right_point_index-val :lambda-list '(m))
(cl:defmethod right_point_index-val ((m <SupplementInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:right_point_index-val is deprecated.  Use all_msgs-msg:right_point_index instead.")
  (right_point_index m))

(cl:ensure-generic-function 'cloud_indices-val :lambda-list '(m))
(cl:defmethod cloud_indices-val ((m <SupplementInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:cloud_indices-val is deprecated.  Use all_msgs-msg:cloud_indices instead.")
  (cloud_indices m))

(cl:ensure-generic-function 'latent_types-val :lambda-list '(m))
(cl:defmethod latent_types-val ((m <SupplementInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:latent_types-val is deprecated.  Use all_msgs-msg:latent_types instead.")
  (latent_types m))

(cl:ensure-generic-function 'size_type-val :lambda-list '(m))
(cl:defmethod size_type-val ((m <SupplementInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:size_type-val is deprecated.  Use all_msgs-msg:size_type instead.")
  (size_type m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <SupplementInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:mode-val is deprecated.  Use all_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'in_roi-val :lambda-list '(m))
(cl:defmethod in_roi-val ((m <SupplementInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:in_roi-val is deprecated.  Use all_msgs-msg:in_roi instead.")
  (in_roi m))

(cl:ensure-generic-function 'tracking_state-val :lambda-list '(m))
(cl:defmethod tracking_state-val ((m <SupplementInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:tracking_state-val is deprecated.  Use all_msgs-msg:tracking_state instead.")
  (tracking_state m))

(cl:ensure-generic-function 'geo_center-val :lambda-list '(m))
(cl:defmethod geo_center-val ((m <SupplementInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:geo_center-val is deprecated.  Use all_msgs-msg:geo_center instead.")
  (geo_center m))

(cl:ensure-generic-function 'geo_size-val :lambda-list '(m))
(cl:defmethod geo_size-val ((m <SupplementInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:geo_size-val is deprecated.  Use all_msgs-msg:geo_size instead.")
  (geo_size m))

(cl:ensure-generic-function 'trajectory-val :lambda-list '(m))
(cl:defmethod trajectory-val ((m <SupplementInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:trajectory-val is deprecated.  Use all_msgs-msg:trajectory instead.")
  (trajectory m))

(cl:ensure-generic-function 'history_velocity-val :lambda-list '(m))
(cl:defmethod history_velocity-val ((m <SupplementInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:history_velocity-val is deprecated.  Use all_msgs-msg:history_velocity instead.")
  (history_velocity m))

(cl:ensure-generic-function 'history_type-val :lambda-list '(m))
(cl:defmethod history_type-val ((m <SupplementInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:history_type-val is deprecated.  Use all_msgs-msg:history_type instead.")
  (history_type m))

(cl:ensure-generic-function 'gps_mode-val :lambda-list '(m))
(cl:defmethod gps_mode-val ((m <SupplementInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:gps_mode-val is deprecated.  Use all_msgs-msg:gps_mode instead.")
  (gps_mode m))

(cl:ensure-generic-function 'gps_info-val :lambda-list '(m))
(cl:defmethod gps_info-val ((m <SupplementInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:gps_info-val is deprecated.  Use all_msgs-msg:gps_info instead.")
  (gps_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SupplementInfo>) ostream)
  "Serializes a message object of type '<SupplementInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'unique_id) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'polygon))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'polygon))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_point_index) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_point_index) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cloud_indices))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cloud_indices))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'latent_types))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'latent_types))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'size_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mode) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'in_roi) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tracking_state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'geo_center) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'geo_size) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'trajectory))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'trajectory))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'history_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'history_velocity))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'history_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'history_type))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gps_mode) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gps_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SupplementInfo>) istream)
  "Deserializes a message object of type '<SupplementInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'unique_id) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'polygon) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'polygon)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'all_msgs-msg:Point3f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_point_index) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_point_index) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cloud_indices) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cloud_indices)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:Int32))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'latent_types) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'latent_types)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:Float32))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'size_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mode) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'in_roi) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tracking_state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'geo_center) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'geo_size) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'trajectory) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'trajectory)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'all_msgs-msg:Point3f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'history_velocity) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'history_velocity)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'all_msgs-msg:Point3f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'history_type) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'history_type)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:Int32))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gps_mode) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gps_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SupplementInfo>)))
  "Returns string type for a message object of type '<SupplementInfo>"
  "all_msgs/SupplementInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SupplementInfo)))
  "Returns string type for a message object of type 'SupplementInfo"
  "all_msgs/SupplementInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SupplementInfo>)))
  "Returns md5sum for a message object of type '<SupplementInfo>"
  "f732019e3813a01320832404d7727553")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SupplementInfo)))
  "Returns md5sum for a message object of type 'SupplementInfo"
  "f732019e3813a01320832404d7727553")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SupplementInfo>)))
  "Returns full string definition for message of type '<SupplementInfo>"
  (cl:format cl:nil "std_msgs/UInt32     unique_id~%~%Point3f[]           polygon~%std_msgs/Int32      left_point_index ~%std_msgs/Int32      right_point_index ~%~%std_msgs/Int32[]    cloud_indices~%~%std_msgs/Float32[]  latent_types~%std_msgs/Int32      size_type ~%std_msgs/Int32      mode ~%std_msgs/Bool       in_roi ~%std_msgs/Int32      tracking_state~%Point3f             geo_center ~%Point3f             geo_size ~%~%~%~%Point3f[]           trajectory ~%Point3f[]           history_velocity~%std_msgs/Int32[]    history_type ~%std_msgs/Int32      gps_mode ~%Point3d             gps_info ~%~%================================================================================~%MSG: std_msgs/UInt32~%uint32 data~%================================================================================~%MSG: all_msgs/Point3f~%std_msgs/Float32 x ~%std_msgs/Float32 y ~%std_msgs/Float32 z ~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: all_msgs/Point3d~%std_msgs/Float64 x ~%std_msgs/Float64 y ~%std_msgs/Float64 z ~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SupplementInfo)))
  "Returns full string definition for message of type 'SupplementInfo"
  (cl:format cl:nil "std_msgs/UInt32     unique_id~%~%Point3f[]           polygon~%std_msgs/Int32      left_point_index ~%std_msgs/Int32      right_point_index ~%~%std_msgs/Int32[]    cloud_indices~%~%std_msgs/Float32[]  latent_types~%std_msgs/Int32      size_type ~%std_msgs/Int32      mode ~%std_msgs/Bool       in_roi ~%std_msgs/Int32      tracking_state~%Point3f             geo_center ~%Point3f             geo_size ~%~%~%~%Point3f[]           trajectory ~%Point3f[]           history_velocity~%std_msgs/Int32[]    history_type ~%std_msgs/Int32      gps_mode ~%Point3d             gps_info ~%~%================================================================================~%MSG: std_msgs/UInt32~%uint32 data~%================================================================================~%MSG: all_msgs/Point3f~%std_msgs/Float32 x ~%std_msgs/Float32 y ~%std_msgs/Float32 z ~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: all_msgs/Point3d~%std_msgs/Float64 x ~%std_msgs/Float64 y ~%std_msgs/Float64 z ~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SupplementInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'unique_id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'polygon) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_point_index))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_point_index))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cloud_indices) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'latent_types) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'size_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mode))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'in_roi))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tracking_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'geo_center))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'geo_size))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'trajectory) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'history_velocity) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'history_type) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gps_mode))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gps_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SupplementInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'SupplementInfo
    (cl:cons ':unique_id (unique_id msg))
    (cl:cons ':polygon (polygon msg))
    (cl:cons ':left_point_index (left_point_index msg))
    (cl:cons ':right_point_index (right_point_index msg))
    (cl:cons ':cloud_indices (cloud_indices msg))
    (cl:cons ':latent_types (latent_types msg))
    (cl:cons ':size_type (size_type msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':in_roi (in_roi msg))
    (cl:cons ':tracking_state (tracking_state msg))
    (cl:cons ':geo_center (geo_center msg))
    (cl:cons ':geo_size (geo_size msg))
    (cl:cons ':trajectory (trajectory msg))
    (cl:cons ':history_velocity (history_velocity msg))
    (cl:cons ':history_type (history_type msg))
    (cl:cons ':gps_mode (gps_mode msg))
    (cl:cons ':gps_info (gps_info msg))
))
