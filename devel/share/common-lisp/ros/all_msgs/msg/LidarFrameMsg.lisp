; Auto-generated. Do not edit!


(cl:in-package all_msgs-msg)


;//! \htmlinclude LidarFrameMsg.msg.html

(cl:defclass <LidarFrameMsg> (roslisp-msg-protocol:ros-message)
  ((frame_id
    :reader frame_id
    :initarg :frame_id
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (timestamp
    :reader timestamp
    :initarg :timestamp
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (global_pose
    :reader global_pose
    :initarg :global_pose
    :type all_msgs-msg:Pose
    :initform (cl:make-instance 'all_msgs-msg:Pose))
   (gps_origin
    :reader gps_origin
    :initarg :gps_origin
    :type all_msgs-msg:Point3d
    :initform (cl:make-instance 'all_msgs-msg:Point3d))
   (status_pose_map
    :reader status_pose_map
    :initarg :status_pose_map
    :type all_msgs-msg:PoseMap
    :initform (cl:make-instance 'all_msgs-msg:PoseMap))
   (status
    :reader status
    :initarg :status
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (valid_indices
    :reader valid_indices
    :initarg :valid_indices
    :type all_msgs-msg:Indices
    :initform (cl:make-instance 'all_msgs-msg:Indices))
   (objects
    :reader objects
    :initarg :objects
    :type all_msgs-msg:Objects
    :initform (cl:make-instance 'all_msgs-msg:Objects))
   (has_pointcloud
    :reader has_pointcloud
    :initarg :has_pointcloud
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (scan_pointcloud
    :reader scan_pointcloud
    :initarg :scan_pointcloud
    :type (cl:vector all_msgs-msg:Point4f)
   :initform (cl:make-array 0 :element-type 'all_msgs-msg:Point4f :initial-element (cl:make-instance 'all_msgs-msg:Point4f)))
   (has_attention_objects
    :reader has_attention_objects
    :initarg :has_attention_objects
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (attention_objects
    :reader attention_objects
    :initarg :attention_objects
    :type all_msgs-msg:Objects
    :initform (cl:make-instance 'all_msgs-msg:Objects))
   (has_freespace
    :reader has_freespace
    :initarg :has_freespace
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (freespace_infos
    :reader freespace_infos
    :initarg :freespace_infos
    :type all_msgs-msg:FreeSpaceInfos
    :initform (cl:make-instance 'all_msgs-msg:FreeSpaceInfos))
   (has_lanes
    :reader has_lanes
    :initarg :has_lanes
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (lanes
    :reader lanes
    :initarg :lanes
    :type all_msgs-msg:Lanes
    :initform (cl:make-instance 'all_msgs-msg:Lanes))
   (has_roadedges
    :reader has_roadedges
    :initarg :has_roadedges
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (roadedges
    :reader roadedges
    :initarg :roadedges
    :type all_msgs-msg:RoadEdges
    :initform (cl:make-instance 'all_msgs-msg:RoadEdges))
   (has_sematice_indices
    :reader has_sematice_indices
    :initarg :has_sematice_indices
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (non_ground_indices
    :reader non_ground_indices
    :initarg :non_ground_indices
    :type all_msgs-msg:Indices
    :initform (cl:make-instance 'all_msgs-msg:Indices))
   (ground_indices
    :reader ground_indices
    :initarg :ground_indices
    :type all_msgs-msg:Indices
    :initform (cl:make-instance 'all_msgs-msg:Indices))
   (background_indices
    :reader background_indices
    :initarg :background_indices
    :type all_msgs-msg:Indices
    :initform (cl:make-instance 'all_msgs-msg:Indices)))
)

(cl:defclass LidarFrameMsg (<LidarFrameMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarFrameMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarFrameMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name all_msgs-msg:<LidarFrameMsg> is deprecated: use all_msgs-msg:LidarFrameMsg instead.")))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <LidarFrameMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:frame_id-val is deprecated.  Use all_msgs-msg:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <LidarFrameMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:timestamp-val is deprecated.  Use all_msgs-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'global_pose-val :lambda-list '(m))
(cl:defmethod global_pose-val ((m <LidarFrameMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:global_pose-val is deprecated.  Use all_msgs-msg:global_pose instead.")
  (global_pose m))

(cl:ensure-generic-function 'gps_origin-val :lambda-list '(m))
(cl:defmethod gps_origin-val ((m <LidarFrameMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:gps_origin-val is deprecated.  Use all_msgs-msg:gps_origin instead.")
  (gps_origin m))

(cl:ensure-generic-function 'status_pose_map-val :lambda-list '(m))
(cl:defmethod status_pose_map-val ((m <LidarFrameMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:status_pose_map-val is deprecated.  Use all_msgs-msg:status_pose_map instead.")
  (status_pose_map m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <LidarFrameMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:status-val is deprecated.  Use all_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'valid_indices-val :lambda-list '(m))
(cl:defmethod valid_indices-val ((m <LidarFrameMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:valid_indices-val is deprecated.  Use all_msgs-msg:valid_indices instead.")
  (valid_indices m))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <LidarFrameMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:objects-val is deprecated.  Use all_msgs-msg:objects instead.")
  (objects m))

(cl:ensure-generic-function 'has_pointcloud-val :lambda-list '(m))
(cl:defmethod has_pointcloud-val ((m <LidarFrameMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:has_pointcloud-val is deprecated.  Use all_msgs-msg:has_pointcloud instead.")
  (has_pointcloud m))

(cl:ensure-generic-function 'scan_pointcloud-val :lambda-list '(m))
(cl:defmethod scan_pointcloud-val ((m <LidarFrameMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:scan_pointcloud-val is deprecated.  Use all_msgs-msg:scan_pointcloud instead.")
  (scan_pointcloud m))

(cl:ensure-generic-function 'has_attention_objects-val :lambda-list '(m))
(cl:defmethod has_attention_objects-val ((m <LidarFrameMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:has_attention_objects-val is deprecated.  Use all_msgs-msg:has_attention_objects instead.")
  (has_attention_objects m))

(cl:ensure-generic-function 'attention_objects-val :lambda-list '(m))
(cl:defmethod attention_objects-val ((m <LidarFrameMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:attention_objects-val is deprecated.  Use all_msgs-msg:attention_objects instead.")
  (attention_objects m))

(cl:ensure-generic-function 'has_freespace-val :lambda-list '(m))
(cl:defmethod has_freespace-val ((m <LidarFrameMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:has_freespace-val is deprecated.  Use all_msgs-msg:has_freespace instead.")
  (has_freespace m))

(cl:ensure-generic-function 'freespace_infos-val :lambda-list '(m))
(cl:defmethod freespace_infos-val ((m <LidarFrameMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:freespace_infos-val is deprecated.  Use all_msgs-msg:freespace_infos instead.")
  (freespace_infos m))

(cl:ensure-generic-function 'has_lanes-val :lambda-list '(m))
(cl:defmethod has_lanes-val ((m <LidarFrameMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:has_lanes-val is deprecated.  Use all_msgs-msg:has_lanes instead.")
  (has_lanes m))

(cl:ensure-generic-function 'lanes-val :lambda-list '(m))
(cl:defmethod lanes-val ((m <LidarFrameMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:lanes-val is deprecated.  Use all_msgs-msg:lanes instead.")
  (lanes m))

(cl:ensure-generic-function 'has_roadedges-val :lambda-list '(m))
(cl:defmethod has_roadedges-val ((m <LidarFrameMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:has_roadedges-val is deprecated.  Use all_msgs-msg:has_roadedges instead.")
  (has_roadedges m))

(cl:ensure-generic-function 'roadedges-val :lambda-list '(m))
(cl:defmethod roadedges-val ((m <LidarFrameMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:roadedges-val is deprecated.  Use all_msgs-msg:roadedges instead.")
  (roadedges m))

(cl:ensure-generic-function 'has_sematice_indices-val :lambda-list '(m))
(cl:defmethod has_sematice_indices-val ((m <LidarFrameMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:has_sematice_indices-val is deprecated.  Use all_msgs-msg:has_sematice_indices instead.")
  (has_sematice_indices m))

(cl:ensure-generic-function 'non_ground_indices-val :lambda-list '(m))
(cl:defmethod non_ground_indices-val ((m <LidarFrameMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:non_ground_indices-val is deprecated.  Use all_msgs-msg:non_ground_indices instead.")
  (non_ground_indices m))

(cl:ensure-generic-function 'ground_indices-val :lambda-list '(m))
(cl:defmethod ground_indices-val ((m <LidarFrameMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:ground_indices-val is deprecated.  Use all_msgs-msg:ground_indices instead.")
  (ground_indices m))

(cl:ensure-generic-function 'background_indices-val :lambda-list '(m))
(cl:defmethod background_indices-val ((m <LidarFrameMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:background_indices-val is deprecated.  Use all_msgs-msg:background_indices instead.")
  (background_indices m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarFrameMsg>) ostream)
  "Serializes a message object of type '<LidarFrameMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'frame_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'timestamp) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'global_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gps_origin) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status_pose_map) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'valid_indices) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'objects) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'has_pointcloud) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'scan_pointcloud))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'scan_pointcloud))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'has_attention_objects) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'attention_objects) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'has_freespace) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'freespace_infos) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'has_lanes) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lanes) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'has_roadedges) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'roadedges) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'has_sematice_indices) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'non_ground_indices) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ground_indices) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'background_indices) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarFrameMsg>) istream)
  "Deserializes a message object of type '<LidarFrameMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'frame_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'timestamp) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'global_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gps_origin) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status_pose_map) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'valid_indices) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'objects) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'has_pointcloud) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'scan_pointcloud) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'scan_pointcloud)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'all_msgs-msg:Point4f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'has_attention_objects) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'attention_objects) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'has_freespace) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'freespace_infos) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'has_lanes) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lanes) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'has_roadedges) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'roadedges) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'has_sematice_indices) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'non_ground_indices) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ground_indices) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'background_indices) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarFrameMsg>)))
  "Returns string type for a message object of type '<LidarFrameMsg>"
  "all_msgs/LidarFrameMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarFrameMsg)))
  "Returns string type for a message object of type 'LidarFrameMsg"
  "all_msgs/LidarFrameMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarFrameMsg>)))
  "Returns md5sum for a message object of type '<LidarFrameMsg>"
  "caa4cd6acb7dc86f4a76180c583c5946")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarFrameMsg)))
  "Returns md5sum for a message object of type 'LidarFrameMsg"
  "caa4cd6acb7dc86f4a76180c583c5946")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarFrameMsg>)))
  "Returns full string definition for message of type '<LidarFrameMsg>"
  (cl:format cl:nil "std_msgs/String frame_id~%std_msgs/Float64 timestamp ~%Pose             global_pose ~%Point3d          gps_origin ~%PoseMap          status_pose_map ~%std_msgs/Int32   status ~%Indices          valid_indices ~%Objects          objects ~%~%std_msgs/Bool  has_pointcloud ~%Point4f[]      scan_pointcloud ~%~%std_msgs/Bool  has_attention_objects ~%Objects        attention_objects ~%~%std_msgs/Bool  has_freespace ~%FreeSpaceInfos freespace_infos ~%~%std_msgs/Bool   has_lanes ~%Lanes           lanes ~%~%std_msgs/Bool   has_roadedges ~%RoadEdges       roadedges ~%~%std_msgs/Bool   has_sematice_indices ~%Indices         non_ground_indices~%Indices         ground_indices ~%Indices         background_indices ~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: all_msgs/Pose~%std_msgs/Float32 x ~%std_msgs/Float32 y ~%std_msgs/Float32 z ~%~%std_msgs/Float32 roll ~%std_msgs/Float32 pitch~%std_msgs/Float32 yaw~%~%std_msgs/Int32 status ~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: all_msgs/Point3d~%std_msgs/Float64 x ~%std_msgs/Float64 y ~%std_msgs/Float64 z ~%~%================================================================================~%MSG: all_msgs/PoseMap~%AxisStatusPose[] status_poses ~%~%================================================================================~%MSG: all_msgs/AxisStatusPose~%std_msgs/Int32 status ~%Pose           pose ~%================================================================================~%MSG: all_msgs/Indices~%std_msgs/Int32[]    indices~%================================================================================~%MSG: all_msgs/Objects~%Object[]         objects~%================================================================================~%MSG: all_msgs/Object~%CoreInfo coreinfo~%std_msgs/Bool  hassupplmentinfo ~%SupplementInfo supplementinfo ~%~%================================================================================~%MSG: all_msgs/CoreInfo~%std_msgs/Float64 timestamp~%~%std_msgs/Int32 priority_id~%std_msgs/Float32 exist_confidence ~%Point3f          center ~%Point3f          center_cov ~%Point3f          size ~%Point3f          size_cov ~%Point3f          direction ~%Point3f          direction_cov         ~%std_msgs/Int32   type ~%std_msgs/Float32 type_confidence ~%std_msgs/Int32   attention_type ~%std_msgs/Int32   motion_state~%std_msgs/Int32   lane_pos~%std_msgs/Int32   trakcer_id ~%std_msgs/Float64 age ~%Point3f          velocity ~%Point3f          velocity_cov ~%Point3f          acceleration ~%Point3f          acceleration_cov ~%std_msgs/Float32 angle_velocity ~%std_msgs/Float32 angle_velocity_cov ~%std_msgs/Float32 angle_acceleration ~%std_msgs/Float32 angle_acceleration_cov  ~%Point3f          anchor ~%Point3f          nearest_point ~%~%~%================================================================================~%MSG: all_msgs/Point3f~%std_msgs/Float32 x ~%std_msgs/Float32 y ~%std_msgs/Float32 z ~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: all_msgs/SupplementInfo~%std_msgs/UInt32     unique_id~%~%Point3f[]           polygon~%std_msgs/Int32      left_point_index ~%std_msgs/Int32      right_point_index ~%~%std_msgs/Int32[]    cloud_indices~%~%std_msgs/Float32[]  latent_types~%std_msgs/Int32      size_type ~%std_msgs/Int32      mode ~%std_msgs/Bool       in_roi ~%std_msgs/Int32      tracking_state~%Point3f             geo_center ~%Point3f             geo_size ~%~%~%~%Point3f[]           trajectory ~%Point3f[]           history_velocity~%std_msgs/Int32[]    history_type ~%std_msgs/Int32      gps_mode ~%Point3d             gps_info ~%~%================================================================================~%MSG: std_msgs/UInt32~%uint32 data~%================================================================================~%MSG: all_msgs/Point4f~%std_msgs/Float32 x ~%std_msgs/Float32 y ~%std_msgs/Float32 z ~%std_msgs/Float32 i ~%~%================================================================================~%MSG: all_msgs/FreeSpaceInfos~%Point3f[]        fs_pts~%std_msgs/Float32[] fs_confidence ~%~%================================================================================~%MSG: all_msgs/Lanes~%Lane[] lanes~%================================================================================~%MSG: all_msgs/Lane~%std_msgs/Int32   lane_id ~%Curve            curve ~%EndPoints        end_points ~%std_msgs/Int32   measure_status  ~%std_msgs/Float32 confidence ~%~%================================================================================~%MSG: all_msgs/Curve~%std_msgs/Float32 x_start ~%std_msgs/Float32 x_end ~%std_msgs/Float32 a ~%std_msgs/Float32 b ~%std_msgs/Float32 c ~%std_msgs/Float32 d ~%================================================================================~%MSG: all_msgs/EndPoints~%Point2f start ~%Point2f end ~%~%================================================================================~%MSG: all_msgs/Point2f~%std_msgs/Float32 x ~%std_msgs/Float32 y ~%~%================================================================================~%MSG: all_msgs/RoadEdges~%RoadEdge[] curbs~%~%================================================================================~%MSG: all_msgs/RoadEdge~%std_msgs/Int32   roadedge_id  ~%Curve            curve ~%EndPoints        end_points ~%std_msgs/Int32   measure_status  ~%std_msgs/Float32 confidence ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarFrameMsg)))
  "Returns full string definition for message of type 'LidarFrameMsg"
  (cl:format cl:nil "std_msgs/String frame_id~%std_msgs/Float64 timestamp ~%Pose             global_pose ~%Point3d          gps_origin ~%PoseMap          status_pose_map ~%std_msgs/Int32   status ~%Indices          valid_indices ~%Objects          objects ~%~%std_msgs/Bool  has_pointcloud ~%Point4f[]      scan_pointcloud ~%~%std_msgs/Bool  has_attention_objects ~%Objects        attention_objects ~%~%std_msgs/Bool  has_freespace ~%FreeSpaceInfos freespace_infos ~%~%std_msgs/Bool   has_lanes ~%Lanes           lanes ~%~%std_msgs/Bool   has_roadedges ~%RoadEdges       roadedges ~%~%std_msgs/Bool   has_sematice_indices ~%Indices         non_ground_indices~%Indices         ground_indices ~%Indices         background_indices ~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: all_msgs/Pose~%std_msgs/Float32 x ~%std_msgs/Float32 y ~%std_msgs/Float32 z ~%~%std_msgs/Float32 roll ~%std_msgs/Float32 pitch~%std_msgs/Float32 yaw~%~%std_msgs/Int32 status ~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: all_msgs/Point3d~%std_msgs/Float64 x ~%std_msgs/Float64 y ~%std_msgs/Float64 z ~%~%================================================================================~%MSG: all_msgs/PoseMap~%AxisStatusPose[] status_poses ~%~%================================================================================~%MSG: all_msgs/AxisStatusPose~%std_msgs/Int32 status ~%Pose           pose ~%================================================================================~%MSG: all_msgs/Indices~%std_msgs/Int32[]    indices~%================================================================================~%MSG: all_msgs/Objects~%Object[]         objects~%================================================================================~%MSG: all_msgs/Object~%CoreInfo coreinfo~%std_msgs/Bool  hassupplmentinfo ~%SupplementInfo supplementinfo ~%~%================================================================================~%MSG: all_msgs/CoreInfo~%std_msgs/Float64 timestamp~%~%std_msgs/Int32 priority_id~%std_msgs/Float32 exist_confidence ~%Point3f          center ~%Point3f          center_cov ~%Point3f          size ~%Point3f          size_cov ~%Point3f          direction ~%Point3f          direction_cov         ~%std_msgs/Int32   type ~%std_msgs/Float32 type_confidence ~%std_msgs/Int32   attention_type ~%std_msgs/Int32   motion_state~%std_msgs/Int32   lane_pos~%std_msgs/Int32   trakcer_id ~%std_msgs/Float64 age ~%Point3f          velocity ~%Point3f          velocity_cov ~%Point3f          acceleration ~%Point3f          acceleration_cov ~%std_msgs/Float32 angle_velocity ~%std_msgs/Float32 angle_velocity_cov ~%std_msgs/Float32 angle_acceleration ~%std_msgs/Float32 angle_acceleration_cov  ~%Point3f          anchor ~%Point3f          nearest_point ~%~%~%================================================================================~%MSG: all_msgs/Point3f~%std_msgs/Float32 x ~%std_msgs/Float32 y ~%std_msgs/Float32 z ~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: all_msgs/SupplementInfo~%std_msgs/UInt32     unique_id~%~%Point3f[]           polygon~%std_msgs/Int32      left_point_index ~%std_msgs/Int32      right_point_index ~%~%std_msgs/Int32[]    cloud_indices~%~%std_msgs/Float32[]  latent_types~%std_msgs/Int32      size_type ~%std_msgs/Int32      mode ~%std_msgs/Bool       in_roi ~%std_msgs/Int32      tracking_state~%Point3f             geo_center ~%Point3f             geo_size ~%~%~%~%Point3f[]           trajectory ~%Point3f[]           history_velocity~%std_msgs/Int32[]    history_type ~%std_msgs/Int32      gps_mode ~%Point3d             gps_info ~%~%================================================================================~%MSG: std_msgs/UInt32~%uint32 data~%================================================================================~%MSG: all_msgs/Point4f~%std_msgs/Float32 x ~%std_msgs/Float32 y ~%std_msgs/Float32 z ~%std_msgs/Float32 i ~%~%================================================================================~%MSG: all_msgs/FreeSpaceInfos~%Point3f[]        fs_pts~%std_msgs/Float32[] fs_confidence ~%~%================================================================================~%MSG: all_msgs/Lanes~%Lane[] lanes~%================================================================================~%MSG: all_msgs/Lane~%std_msgs/Int32   lane_id ~%Curve            curve ~%EndPoints        end_points ~%std_msgs/Int32   measure_status  ~%std_msgs/Float32 confidence ~%~%================================================================================~%MSG: all_msgs/Curve~%std_msgs/Float32 x_start ~%std_msgs/Float32 x_end ~%std_msgs/Float32 a ~%std_msgs/Float32 b ~%std_msgs/Float32 c ~%std_msgs/Float32 d ~%================================================================================~%MSG: all_msgs/EndPoints~%Point2f start ~%Point2f end ~%~%================================================================================~%MSG: all_msgs/Point2f~%std_msgs/Float32 x ~%std_msgs/Float32 y ~%~%================================================================================~%MSG: all_msgs/RoadEdges~%RoadEdge[] curbs~%~%================================================================================~%MSG: all_msgs/RoadEdge~%std_msgs/Int32   roadedge_id  ~%Curve            curve ~%EndPoints        end_points ~%std_msgs/Int32   measure_status  ~%std_msgs/Float32 confidence ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarFrameMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'frame_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'timestamp))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'global_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gps_origin))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status_pose_map))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'valid_indices))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'objects))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'has_pointcloud))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'scan_pointcloud) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'has_attention_objects))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'attention_objects))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'has_freespace))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'freespace_infos))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'has_lanes))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lanes))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'has_roadedges))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'roadedges))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'has_sematice_indices))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'non_ground_indices))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ground_indices))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'background_indices))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarFrameMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarFrameMsg
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':global_pose (global_pose msg))
    (cl:cons ':gps_origin (gps_origin msg))
    (cl:cons ':status_pose_map (status_pose_map msg))
    (cl:cons ':status (status msg))
    (cl:cons ':valid_indices (valid_indices msg))
    (cl:cons ':objects (objects msg))
    (cl:cons ':has_pointcloud (has_pointcloud msg))
    (cl:cons ':scan_pointcloud (scan_pointcloud msg))
    (cl:cons ':has_attention_objects (has_attention_objects msg))
    (cl:cons ':attention_objects (attention_objects msg))
    (cl:cons ':has_freespace (has_freespace msg))
    (cl:cons ':freespace_infos (freespace_infos msg))
    (cl:cons ':has_lanes (has_lanes msg))
    (cl:cons ':lanes (lanes msg))
    (cl:cons ':has_roadedges (has_roadedges msg))
    (cl:cons ':roadedges (roadedges msg))
    (cl:cons ':has_sematice_indices (has_sematice_indices msg))
    (cl:cons ':non_ground_indices (non_ground_indices msg))
    (cl:cons ':ground_indices (ground_indices msg))
    (cl:cons ':background_indices (background_indices msg))
))
