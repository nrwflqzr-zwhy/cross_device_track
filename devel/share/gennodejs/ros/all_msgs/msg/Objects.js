// Auto-generated. Do not edit!

// (in-package all_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Object = require('./Object.js');

//-----------------------------------------------------------

class Objects {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.objects = null;
    }
    else {
      if (initObj.hasOwnProperty('objects')) {
        this.objects = initObj.objects
      }
      else {
        this.objects = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Objects
    // Serialize message field [objects]
    // Serialize the length for message field [objects]
    bufferOffset = _serializer.uint32(obj.objects.length, buffer, bufferOffset);
    obj.objects.forEach((val) => {
      bufferOffset = Object.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Objects
    let len;
    let data = new Objects(null);
    // Deserialize message field [objects]
    // Deserialize array length for message field [objects]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.objects = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.objects[i] = Object.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.objects.forEach((val) => {
      length += Object.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'all_msgs/Objects';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'af808db5c14ee51e1e18c9cd6b126641';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Objects(null);
    if (msg.objects !== undefined) {
      resolved.objects = new Array(msg.objects.length);
      for (let i = 0; i < resolved.objects.length; ++i) {
        resolved.objects[i] = Object.Resolve(msg.objects[i]);
      }
    }
    else {
      resolved.objects = []
    }

    return resolved;
    }
};

module.exports = Objects;
