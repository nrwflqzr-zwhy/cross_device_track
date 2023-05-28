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
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class AxisStatusPose {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.pose = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AxisStatusPose
    // Serialize message field [status]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.status, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = Pose.serialize(obj.pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AxisStatusPose
    let len;
    let data = new AxisStatusPose(null);
    // Deserialize message field [status]
    data.status = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'all_msgs/AxisStatusPose';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1987389e84dad24c41bcd78726580d20';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new AxisStatusPose(null);
    if (msg.status !== undefined) {
      resolved.status = std_msgs.msg.Int32.Resolve(msg.status)
    }
    else {
      resolved.status = new std_msgs.msg.Int32()
    }

    if (msg.pose !== undefined) {
      resolved.pose = Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new Pose()
    }

    return resolved;
    }
};

module.exports = AxisStatusPose;
