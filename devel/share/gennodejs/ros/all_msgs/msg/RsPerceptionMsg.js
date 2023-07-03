// Auto-generated. Do not edit!

// (in-package all_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LidarFrameMsg = require('./LidarFrameMsg.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RsPerceptionMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lidarframe = null;
      this.device_id = null;
    }
    else {
      if (initObj.hasOwnProperty('lidarframe')) {
        this.lidarframe = initObj.lidarframe
      }
      else {
        this.lidarframe = new LidarFrameMsg();
      }
      if (initObj.hasOwnProperty('device_id')) {
        this.device_id = initObj.device_id
      }
      else {
        this.device_id = new std_msgs.msg.Int32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RsPerceptionMsg
    // Serialize message field [lidarframe]
    bufferOffset = LidarFrameMsg.serialize(obj.lidarframe, buffer, bufferOffset);
    // Serialize message field [device_id]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.device_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RsPerceptionMsg
    let len;
    let data = new RsPerceptionMsg(null);
    // Deserialize message field [lidarframe]
    data.lidarframe = LidarFrameMsg.deserialize(buffer, bufferOffset);
    // Deserialize message field [device_id]
    data.device_id = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += LidarFrameMsg.getMessageSize(object.lidarframe);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'all_msgs/RsPerceptionMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6ed114efee5ecd5e94f0dbd1aa700b6d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Field Of LidarFrameMsg 
    LidarFrameMsg           lidarframe 
    std_msgs/Int32          device_id
    ================================================================================
    MSG: all_msgs/LidarFrameMsg
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
    const resolved = new RsPerceptionMsg(null);
    if (msg.lidarframe !== undefined) {
      resolved.lidarframe = LidarFrameMsg.Resolve(msg.lidarframe)
    }
    else {
      resolved.lidarframe = new LidarFrameMsg()
    }

    if (msg.device_id !== undefined) {
      resolved.device_id = std_msgs.msg.Int32.Resolve(msg.device_id)
    }
    else {
      resolved.device_id = new std_msgs.msg.Int32()
    }

    return resolved;
    }
};

module.exports = RsPerceptionMsg;
