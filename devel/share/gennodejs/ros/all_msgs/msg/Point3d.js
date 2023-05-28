// Auto-generated. Do not edit!

// (in-package all_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Point3d {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.z = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = new std_msgs.msg.Float64();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Point3d
    // Serialize message field [x]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.z, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Point3d
    let len;
    let data = new Point3d(null);
    // Deserialize message field [x]
    data.x = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'all_msgs/Point3d';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c5166234939ddbad7844e2026f79c5fa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Float64 x 
    std_msgs/Float64 y 
    std_msgs/Float64 z 
    
    ================================================================================
    MSG: std_msgs/Float64
    float64 data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Point3d(null);
    if (msg.x !== undefined) {
      resolved.x = std_msgs.msg.Float64.Resolve(msg.x)
    }
    else {
      resolved.x = new std_msgs.msg.Float64()
    }

    if (msg.y !== undefined) {
      resolved.y = std_msgs.msg.Float64.Resolve(msg.y)
    }
    else {
      resolved.y = new std_msgs.msg.Float64()
    }

    if (msg.z !== undefined) {
      resolved.z = std_msgs.msg.Float64.Resolve(msg.z)
    }
    else {
      resolved.z = new std_msgs.msg.Float64()
    }

    return resolved;
    }
};

module.exports = Point3d;
