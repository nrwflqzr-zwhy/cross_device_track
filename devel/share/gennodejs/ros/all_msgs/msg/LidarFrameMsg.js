// Auto-generated. Do not edit!

// (in-package all_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Pose = require('./Pose.js');
let Point3d = require('./Point3d.js');
let PoseMap = require('./PoseMap.js');
let Indices = require('./Indices.js');
let Objects = require('./Objects.js');
let Point4f = require('./Point4f.js');
let FreeSpaceInfos = require('./FreeSpaceInfos.js');
let Lanes = require('./Lanes.js');
let RoadEdges = require('./RoadEdges.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LidarFrameMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.frame_id = null;
      this.timestamp = null;
      this.global_pose = null;
      this.gps_origin = null;
      this.status_pose_map = null;
      this.status = null;
      this.valid_indices = null;
      this.objects = null;
      this.has_pointcloud = null;
      this.scan_pointcloud = null;
      this.has_attention_objects = null;
      this.attention_objects = null;
      this.has_freespace = null;
      this.freespace_infos = null;
      this.has_lanes = null;
      this.lanes = null;
      this.has_roadedges = null;
      this.roadedges = null;
      this.has_sematice_indices = null;
      this.non_ground_indices = null;
      this.ground_indices = null;
      this.background_indices = null;
    }
    else {
      if (initObj.hasOwnProperty('frame_id')) {
        this.frame_id = initObj.frame_id
      }
      else {
        this.frame_id = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('global_pose')) {
        this.global_pose = initObj.global_pose
      }
      else {
        this.global_pose = new Pose();
      }
      if (initObj.hasOwnProperty('gps_origin')) {
        this.gps_origin = initObj.gps_origin
      }
      else {
        this.gps_origin = new Point3d();
      }
      if (initObj.hasOwnProperty('status_pose_map')) {
        this.status_pose_map = initObj.status_pose_map
      }
      else {
        this.status_pose_map = new PoseMap();
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('valid_indices')) {
        this.valid_indices = initObj.valid_indices
      }
      else {
        this.valid_indices = new Indices();
      }
      if (initObj.hasOwnProperty('objects')) {
        this.objects = initObj.objects
      }
      else {
        this.objects = new Objects();
      }
      if (initObj.hasOwnProperty('has_pointcloud')) {
        this.has_pointcloud = initObj.has_pointcloud
      }
      else {
        this.has_pointcloud = new std_msgs.msg.Bool();
      }
      if (initObj.hasOwnProperty('scan_pointcloud')) {
        this.scan_pointcloud = initObj.scan_pointcloud
      }
      else {
        this.scan_pointcloud = [];
      }
      if (initObj.hasOwnProperty('has_attention_objects')) {
        this.has_attention_objects = initObj.has_attention_objects
      }
      else {
        this.has_attention_objects = new std_msgs.msg.Bool();
      }
      if (initObj.hasOwnProperty('attention_objects')) {
        this.attention_objects = initObj.attention_objects
      }
      else {
        this.attention_objects = new Objects();
      }
      if (initObj.hasOwnProperty('has_freespace')) {
        this.has_freespace = initObj.has_freespace
      }
      else {
        this.has_freespace = new std_msgs.msg.Bool();
      }
      if (initObj.hasOwnProperty('freespace_infos')) {
        this.freespace_infos = initObj.freespace_infos
      }
      else {
        this.freespace_infos = new FreeSpaceInfos();
      }
      if (initObj.hasOwnProperty('has_lanes')) {
        this.has_lanes = initObj.has_lanes
      }
      else {
        this.has_lanes = new std_msgs.msg.Bool();
      }
      if (initObj.hasOwnProperty('lanes')) {
        this.lanes = initObj.lanes
      }
      else {
        this.lanes = new Lanes();
      }
      if (initObj.hasOwnProperty('has_roadedges')) {
        this.has_roadedges = initObj.has_roadedges
      }
      else {
        this.has_roadedges = new std_msgs.msg.Bool();
      }
      if (initObj.hasOwnProperty('roadedges')) {
        this.roadedges = initObj.roadedges
      }
      else {
        this.roadedges = new RoadEdges();
      }
      if (initObj.hasOwnProperty('has_sematice_indices')) {
        this.has_sematice_indices = initObj.has_sematice_indices
      }
      else {
        this.has_sematice_indices = new std_msgs.msg.Bool();
      }
      if (initObj.hasOwnProperty('non_ground_indices')) {
        this.non_ground_indices = initObj.non_ground_indices
      }
      else {
        this.non_ground_indices = new Indices();
      }
      if (initObj.hasOwnProperty('ground_indices')) {
        this.ground_indices = initObj.ground_indices
      }
      else {
        this.ground_indices = new Indices();
      }
      if (initObj.hasOwnProperty('background_indices')) {
        this.background_indices = initObj.background_indices
      }
      else {
        this.background_indices = new Indices();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LidarFrameMsg
    // Serialize message field [frame_id]
    bufferOffset = std_msgs.msg.String.serialize(obj.frame_id, buffer, bufferOffset);
    // Serialize message field [timestamp]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [global_pose]
    bufferOffset = Pose.serialize(obj.global_pose, buffer, bufferOffset);
    // Serialize message field [gps_origin]
    bufferOffset = Point3d.serialize(obj.gps_origin, buffer, bufferOffset);
    // Serialize message field [status_pose_map]
    bufferOffset = PoseMap.serialize(obj.status_pose_map, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.status, buffer, bufferOffset);
    // Serialize message field [valid_indices]
    bufferOffset = Indices.serialize(obj.valid_indices, buffer, bufferOffset);
    // Serialize message field [objects]
    bufferOffset = Objects.serialize(obj.objects, buffer, bufferOffset);
    // Serialize message field [has_pointcloud]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.has_pointcloud, buffer, bufferOffset);
    // Serialize message field [scan_pointcloud]
    // Serialize the length for message field [scan_pointcloud]
    bufferOffset = _serializer.uint32(obj.scan_pointcloud.length, buffer, bufferOffset);
    obj.scan_pointcloud.forEach((val) => {
      bufferOffset = Point4f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [has_attention_objects]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.has_attention_objects, buffer, bufferOffset);
    // Serialize message field [attention_objects]
    bufferOffset = Objects.serialize(obj.attention_objects, buffer, bufferOffset);
    // Serialize message field [has_freespace]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.has_freespace, buffer, bufferOffset);
    // Serialize message field [freespace_infos]
    bufferOffset = FreeSpaceInfos.serialize(obj.freespace_infos, buffer, bufferOffset);
    // Serialize message field [has_lanes]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.has_lanes, buffer, bufferOffset);
    // Serialize message field [lanes]
    bufferOffset = Lanes.serialize(obj.lanes, buffer, bufferOffset);
    // Serialize message field [has_roadedges]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.has_roadedges, buffer, bufferOffset);
    // Serialize message field [roadedges]
    bufferOffset = RoadEdges.serialize(obj.roadedges, buffer, bufferOffset);
    // Serialize message field [has_sematice_indices]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.has_sematice_indices, buffer, bufferOffset);
    // Serialize message field [non_ground_indices]
    bufferOffset = Indices.serialize(obj.non_ground_indices, buffer, bufferOffset);
    // Serialize message field [ground_indices]
    bufferOffset = Indices.serialize(obj.ground_indices, buffer, bufferOffset);
    // Serialize message field [background_indices]
    bufferOffset = Indices.serialize(obj.background_indices, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LidarFrameMsg
    let len;
    let data = new LidarFrameMsg(null);
    // Deserialize message field [frame_id]
    data.frame_id = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [timestamp]
    data.timestamp = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [global_pose]
    data.global_pose = Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [gps_origin]
    data.gps_origin = Point3d.deserialize(buffer, bufferOffset);
    // Deserialize message field [status_pose_map]
    data.status_pose_map = PoseMap.deserialize(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [valid_indices]
    data.valid_indices = Indices.deserialize(buffer, bufferOffset);
    // Deserialize message field [objects]
    data.objects = Objects.deserialize(buffer, bufferOffset);
    // Deserialize message field [has_pointcloud]
    data.has_pointcloud = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    // Deserialize message field [scan_pointcloud]
    // Deserialize array length for message field [scan_pointcloud]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.scan_pointcloud = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.scan_pointcloud[i] = Point4f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [has_attention_objects]
    data.has_attention_objects = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    // Deserialize message field [attention_objects]
    data.attention_objects = Objects.deserialize(buffer, bufferOffset);
    // Deserialize message field [has_freespace]
    data.has_freespace = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    // Deserialize message field [freespace_infos]
    data.freespace_infos = FreeSpaceInfos.deserialize(buffer, bufferOffset);
    // Deserialize message field [has_lanes]
    data.has_lanes = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    // Deserialize message field [lanes]
    data.lanes = Lanes.deserialize(buffer, bufferOffset);
    // Deserialize message field [has_roadedges]
    data.has_roadedges = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    // Deserialize message field [roadedges]
    data.roadedges = RoadEdges.deserialize(buffer, bufferOffset);
    // Deserialize message field [has_sematice_indices]
    data.has_sematice_indices = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    // Deserialize message field [non_ground_indices]
    data.non_ground_indices = Indices.deserialize(buffer, bufferOffset);
    // Deserialize message field [ground_indices]
    data.ground_indices = Indices.deserialize(buffer, bufferOffset);
    // Deserialize message field [background_indices]
    data.background_indices = Indices.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.frame_id);
    length += PoseMap.getMessageSize(object.status_pose_map);
    length += Indices.getMessageSize(object.valid_indices);
    length += Objects.getMessageSize(object.objects);
    length += 16 * object.scan_pointcloud.length;
    length += Objects.getMessageSize(object.attention_objects);
    length += FreeSpaceInfos.getMessageSize(object.freespace_infos);
    length += Lanes.getMessageSize(object.lanes);
    length += RoadEdges.getMessageSize(object.roadedges);
    length += Indices.getMessageSize(object.non_ground_indices);
    length += Indices.getMessageSize(object.ground_indices);
    length += Indices.getMessageSize(object.background_indices);
    return length + 74;
  }

  static datatype() {
    // Returns string type for a message object
    return 'all_msgs/LidarFrameMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'caa4cd6acb7dc86f4a76180c583c5946';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/String frame_id
    std_msgs/Float64 timestamp 
    Pose             global_pose 
    Point3d          gps_origin 
    PoseMap          status_pose_map 
    std_msgs/Int32   status 
    Indices          valid_indices 
    Objects          objects 
    
    std_msgs/Bool  has_pointcloud 
    Point4f[]      scan_pointcloud 
    
    std_msgs/Bool  has_attention_objects 
    Objects        attention_objects 
    
    std_msgs/Bool  has_freespace 
    FreeSpaceInfos freespace_infos 
    
    std_msgs/Bool   has_lanes 
    Lanes           lanes 
    
    std_msgs/Bool   has_roadedges 
    RoadEdges       roadedges 
    
    std_msgs/Bool   has_sematice_indices 
    Indices         non_ground_indices
    Indices         ground_indices 
    Indices         background_indices 
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    ================================================================================
    MSG: std_msgs/Float64
    float64 data
    ================================================================================
    MSG: all_msgs/Pose
    std_msgs/Float32 x 
    std_msgs/Float32 y 
    std_msgs/Float32 z 
    
    std_msgs/Float32 roll 
    std_msgs/Float32 pitch
    std_msgs/Float32 yaw
    
    std_msgs/Int32 status 
    
    ================================================================================
    MSG: std_msgs/Float32
    float32 data
    ================================================================================
    MSG: std_msgs/Int32
    int32 data
    ================================================================================
    MSG: all_msgs/Point3d
    std_msgs/Float64 x 
    std_msgs/Float64 y 
    std_msgs/Float64 z 
    
    ================================================================================
    MSG: all_msgs/PoseMap
    AxisStatusPose[] status_poses 
    
    ================================================================================
    MSG: all_msgs/AxisStatusPose
    std_msgs/Int32 status 
    Pose           pose 
    ================================================================================
    MSG: all_msgs/Indices
    std_msgs/Int32[]    indices
    ================================================================================
    MSG: all_msgs/Objects
    Object[]         objects
    ================================================================================
    MSG: all_msgs/Object
    CoreInfo coreinfo
    std_msgs/Bool  hassupplmentinfo 
    SupplementInfo supplementinfo 
    
    ================================================================================
    MSG: all_msgs/CoreInfo
    std_msgs/Float64 timestamp
    
    std_msgs/Int32 priority_id
    std_msgs/Float32 exist_confidence 
    Point3f          center 
    Point3f          center_cov 
    Point3f          size 
    Point3f          size_cov 
    Point3f          direction 
    Point3f          direction_cov         
    std_msgs/Int32   type 
    std_msgs/Float32 type_confidence 
    std_msgs/Int32   attention_type 
    std_msgs/Int32   motion_state
    std_msgs/Int32   lane_pos
    std_msgs/Int32   trakcer_id 
    std_msgs/Float64 age 
    Point3f          velocity 
    Point3f          velocity_cov 
    Point3f          acceleration 
    Point3f          acceleration_cov 
    std_msgs/Float32 angle_velocity 
    std_msgs/Float32 angle_velocity_cov 
    std_msgs/Float32 angle_acceleration 
    std_msgs/Float32 angle_acceleration_cov  
    Point3f          anchor 
    Point3f          nearest_point 
    
    
    ================================================================================
    MSG: all_msgs/Point3f
    std_msgs/Float32 x 
    std_msgs/Float32 y 
    std_msgs/Float32 z 
    ================================================================================
    MSG: std_msgs/Bool
    bool data
    ================================================================================
    MSG: all_msgs/SupplementInfo
    std_msgs/UInt32     unique_id
    
    Point3f[]           polygon
    std_msgs/Int32      left_point_index 
    std_msgs/Int32      right_point_index 
    
    std_msgs/Int32[]    cloud_indices
    
    std_msgs/Float32[]  latent_types
    std_msgs/Int32      size_type 
    std_msgs/Int32      mode 
    std_msgs/Bool       in_roi 
    std_msgs/Int32      tracking_state
    Point3f             geo_center 
    Point3f             geo_size 
    
    
    
    Point3f[]           trajectory 
    Point3f[]           history_velocity
    std_msgs/Int32[]    history_type 
    std_msgs/Int32      gps_mode 
    Point3d             gps_info 
    
    ================================================================================
    MSG: std_msgs/UInt32
    uint32 data
    ================================================================================
    MSG: all_msgs/Point4f
    std_msgs/Float32 x 
    std_msgs/Float32 y 
    std_msgs/Float32 z 
    std_msgs/Float32 i 
    
    ================================================================================
    MSG: all_msgs/FreeSpaceInfos
    Point3f[]        fs_pts
    std_msgs/Float32[] fs_confidence 
    
    ================================================================================
    MSG: all_msgs/Lanes
    Lane[] lanes
    ================================================================================
    MSG: all_msgs/Lane
    std_msgs/Int32   lane_id 
    Curve            curve 
    EndPoints        end_points 
    std_msgs/Int32   measure_status  
    std_msgs/Float32 confidence 
    
    ================================================================================
    MSG: all_msgs/Curve
    std_msgs/Float32 x_start 
    std_msgs/Float32 x_end 
    std_msgs/Float32 a 
    std_msgs/Float32 b 
    std_msgs/Float32 c 
    std_msgs/Float32 d 
    ================================================================================
    MSG: all_msgs/EndPoints
    Point2f start 
    Point2f end 
    
    ================================================================================
    MSG: all_msgs/Point2f
    std_msgs/Float32 x 
    std_msgs/Float32 y 
    
    ================================================================================
    MSG: all_msgs/RoadEdges
    RoadEdge[] curbs
    
    ================================================================================
    MSG: all_msgs/RoadEdge
    std_msgs/Int32   roadedge_id  
    Curve            curve 
    EndPoints        end_points 
    std_msgs/Int32   measure_status  
    std_msgs/Float32 confidence 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LidarFrameMsg(null);
    if (msg.frame_id !== undefined) {
      resolved.frame_id = std_msgs.msg.String.Resolve(msg.frame_id)
    }
    else {
      resolved.frame_id = new std_msgs.msg.String()
    }

    if (msg.timestamp !== undefined) {
      resolved.timestamp = std_msgs.msg.Float64.Resolve(msg.timestamp)
    }
    else {
      resolved.timestamp = new std_msgs.msg.Float64()
    }

    if (msg.global_pose !== undefined) {
      resolved.global_pose = Pose.Resolve(msg.global_pose)
    }
    else {
      resolved.global_pose = new Pose()
    }

    if (msg.gps_origin !== undefined) {
      resolved.gps_origin = Point3d.Resolve(msg.gps_origin)
    }
    else {
      resolved.gps_origin = new Point3d()
    }

    if (msg.status_pose_map !== undefined) {
      resolved.status_pose_map = PoseMap.Resolve(msg.status_pose_map)
    }
    else {
      resolved.status_pose_map = new PoseMap()
    }

    if (msg.status !== undefined) {
      resolved.status = std_msgs.msg.Int32.Resolve(msg.status)
    }
    else {
      resolved.status = new std_msgs.msg.Int32()
    }

    if (msg.valid_indices !== undefined) {
      resolved.valid_indices = Indices.Resolve(msg.valid_indices)
    }
    else {
      resolved.valid_indices = new Indices()
    }

    if (msg.objects !== undefined) {
      resolved.objects = Objects.Resolve(msg.objects)
    }
    else {
      resolved.objects = new Objects()
    }

    if (msg.has_pointcloud !== undefined) {
      resolved.has_pointcloud = std_msgs.msg.Bool.Resolve(msg.has_pointcloud)
    }
    else {
      resolved.has_pointcloud = new std_msgs.msg.Bool()
    }

    if (msg.scan_pointcloud !== undefined) {
      resolved.scan_pointcloud = new Array(msg.scan_pointcloud.length);
      for (let i = 0; i < resolved.scan_pointcloud.length; ++i) {
        resolved.scan_pointcloud[i] = Point4f.Resolve(msg.scan_pointcloud[i]);
      }
    }
    else {
      resolved.scan_pointcloud = []
    }

    if (msg.has_attention_objects !== undefined) {
      resolved.has_attention_objects = std_msgs.msg.Bool.Resolve(msg.has_attention_objects)
    }
    else {
      resolved.has_attention_objects = new std_msgs.msg.Bool()
    }

    if (msg.attention_objects !== undefined) {
      resolved.attention_objects = Objects.Resolve(msg.attention_objects)
    }
    else {
      resolved.attention_objects = new Objects()
    }

    if (msg.has_freespace !== undefined) {
      resolved.has_freespace = std_msgs.msg.Bool.Resolve(msg.has_freespace)
    }
    else {
      resolved.has_freespace = new std_msgs.msg.Bool()
    }

    if (msg.freespace_infos !== undefined) {
      resolved.freespace_infos = FreeSpaceInfos.Resolve(msg.freespace_infos)
    }
    else {
      resolved.freespace_infos = new FreeSpaceInfos()
    }

    if (msg.has_lanes !== undefined) {
      resolved.has_lanes = std_msgs.msg.Bool.Resolve(msg.has_lanes)
    }
    else {
      resolved.has_lanes = new std_msgs.msg.Bool()
    }

    if (msg.lanes !== undefined) {
      resolved.lanes = Lanes.Resolve(msg.lanes)
    }
    else {
      resolved.lanes = new Lanes()
    }

    if (msg.has_roadedges !== undefined) {
      resolved.has_roadedges = std_msgs.msg.Bool.Resolve(msg.has_roadedges)
    }
    else {
      resolved.has_roadedges = new std_msgs.msg.Bool()
    }

    if (msg.roadedges !== undefined) {
      resolved.roadedges = RoadEdges.Resolve(msg.roadedges)
    }
    else {
      resolved.roadedges = new RoadEdges()
    }

    if (msg.has_sematice_indices !== undefined) {
      resolved.has_sematice_indices = std_msgs.msg.Bool.Resolve(msg.has_sematice_indices)
    }
    else {
      resolved.has_sematice_indices = new std_msgs.msg.Bool()
    }

    if (msg.non_ground_indices !== undefined) {
      resolved.non_ground_indices = Indices.Resolve(msg.non_ground_indices)
    }
    else {
      resolved.non_ground_indices = new Indices()
    }

    if (msg.ground_indices !== undefined) {
      resolved.ground_indices = Indices.Resolve(msg.ground_indices)
    }
    else {
      resolved.ground_indices = new Indices()
    }

    if (msg.background_indices !== undefined) {
      resolved.background_indices = Indices.Resolve(msg.background_indices)
    }
    else {
      resolved.background_indices = new Indices()
    }

    return resolved;
    }
};

module.exports = LidarFrameMsg;
