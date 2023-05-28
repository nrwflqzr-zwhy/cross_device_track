// Auto-generated. Do not edit!

// (in-package all_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CoreInfo = require('./CoreInfo.js');
let SupplementInfo = require('./SupplementInfo.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Object {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.coreinfo = null;
      this.hassupplmentinfo = null;
      this.supplementinfo = null;
    }
    else {
      if (initObj.hasOwnProperty('coreinfo')) {
        this.coreinfo = initObj.coreinfo
      }
      else {
        this.coreinfo = new CoreInfo();
      }
      if (initObj.hasOwnProperty('hassupplmentinfo')) {
        this.hassupplmentinfo = initObj.hassupplmentinfo
      }
      else {
        this.hassupplmentinfo = new std_msgs.msg.Bool();
      }
      if (initObj.hasOwnProperty('supplementinfo')) {
        this.supplementinfo = initObj.supplementinfo
      }
      else {
        this.supplementinfo = new SupplementInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Object
    // Serialize message field [coreinfo]
    bufferOffset = CoreInfo.serialize(obj.coreinfo, buffer, bufferOffset);
    // Serialize message field [hassupplmentinfo]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.hassupplmentinfo, buffer, bufferOffset);
    // Serialize message field [supplementinfo]
    bufferOffset = SupplementInfo.serialize(obj.supplementinfo, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Object
    let len;
    let data = new Object(null);
    // Deserialize message field [coreinfo]
    data.coreinfo = CoreInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [hassupplmentinfo]
    data.hassupplmentinfo = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    // Deserialize message field [supplementinfo]
    data.supplementinfo = SupplementInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += SupplementInfo.getMessageSize(object.supplementinfo);
    return length + 209;
  }

  static datatype() {
    // Returns string type for a message object
    return 'all_msgs/Object';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '58769107fb9619969bdc416c42341c77';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    MSG: std_msgs/Float64
    float64 data
    ================================================================================
    MSG: std_msgs/Int32
    int32 data
    ================================================================================
    MSG: std_msgs/Float32
    float32 data
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
    MSG: all_msgs/Point3d
    std_msgs/Float64 x 
    std_msgs/Float64 y 
    std_msgs/Float64 z 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Object(null);
    if (msg.coreinfo !== undefined) {
      resolved.coreinfo = CoreInfo.Resolve(msg.coreinfo)
    }
    else {
      resolved.coreinfo = new CoreInfo()
    }

    if (msg.hassupplmentinfo !== undefined) {
      resolved.hassupplmentinfo = std_msgs.msg.Bool.Resolve(msg.hassupplmentinfo)
    }
    else {
      resolved.hassupplmentinfo = new std_msgs.msg.Bool()
    }

    if (msg.supplementinfo !== undefined) {
      resolved.supplementinfo = SupplementInfo.Resolve(msg.supplementinfo)
    }
    else {
      resolved.supplementinfo = new SupplementInfo()
    }

    return resolved;
    }
};

module.exports = Object;
