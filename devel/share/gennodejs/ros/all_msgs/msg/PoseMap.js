// Auto-generated. Do not edit!

// (in-package all_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AxisStatusPose = require('./AxisStatusPose.js');

//-----------------------------------------------------------

class PoseMap {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status_poses = null;
    }
    else {
      if (initObj.hasOwnProperty('status_poses')) {
        this.status_poses = initObj.status_poses
      }
      else {
        this.status_poses = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PoseMap
    // Serialize message field [status_poses]
    // Serialize the length for message field [status_poses]
    bufferOffset = _serializer.uint32(obj.status_poses.length, buffer, bufferOffset);
    obj.status_poses.forEach((val) => {
      bufferOffset = AxisStatusPose.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PoseMap
    let len;
    let data = new PoseMap(null);
    // Deserialize message field [status_poses]
    // Deserialize array length for message field [status_poses]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.status_poses = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.status_poses[i] = AxisStatusPose.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 32 * object.status_poses.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'all_msgs/PoseMap';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '51fc7df0ce0cb8096f687175e8cb1f26';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    AxisStatusPose[] status_poses 
    
    ================================================================================
    MSG: all_msgs/AxisStatusPose
    std_msgs/Int32 status 
    Pose           pose 
    ================================================================================
    MSG: std_msgs/Int32
    int32 data
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PoseMap(null);
    if (msg.status_poses !== undefined) {
      resolved.status_poses = new Array(msg.status_poses.length);
      for (let i = 0; i < resolved.status_poses.length; ++i) {
        resolved.status_poses[i] = AxisStatusPose.Resolve(msg.status_poses[i]);
      }
    }
    else {
      resolved.status_poses = []
    }

    return resolved;
    }
};

module.exports = PoseMap;
