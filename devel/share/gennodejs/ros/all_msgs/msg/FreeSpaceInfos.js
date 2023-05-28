// Auto-generated. Do not edit!

// (in-package all_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Point3f = require('./Point3f.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class FreeSpaceInfos {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.fs_pts = null;
      this.fs_confidence = null;
    }
    else {
      if (initObj.hasOwnProperty('fs_pts')) {
        this.fs_pts = initObj.fs_pts
      }
      else {
        this.fs_pts = [];
      }
      if (initObj.hasOwnProperty('fs_confidence')) {
        this.fs_confidence = initObj.fs_confidence
      }
      else {
        this.fs_confidence = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FreeSpaceInfos
    // Serialize message field [fs_pts]
    // Serialize the length for message field [fs_pts]
    bufferOffset = _serializer.uint32(obj.fs_pts.length, buffer, bufferOffset);
    obj.fs_pts.forEach((val) => {
      bufferOffset = Point3f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [fs_confidence]
    // Serialize the length for message field [fs_confidence]
    bufferOffset = _serializer.uint32(obj.fs_confidence.length, buffer, bufferOffset);
    obj.fs_confidence.forEach((val) => {
      bufferOffset = std_msgs.msg.Float32.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FreeSpaceInfos
    let len;
    let data = new FreeSpaceInfos(null);
    // Deserialize message field [fs_pts]
    // Deserialize array length for message field [fs_pts]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.fs_pts = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.fs_pts[i] = Point3f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [fs_confidence]
    // Deserialize array length for message field [fs_confidence]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.fs_confidence = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.fs_confidence[i] = std_msgs.msg.Float32.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 12 * object.fs_pts.length;
    length += 4 * object.fs_confidence.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'all_msgs/FreeSpaceInfos';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a60987ee9bd368f8db4ac0adf7d909b0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Point3f[]        fs_pts
    std_msgs/Float32[] fs_confidence 
    
    ================================================================================
    MSG: all_msgs/Point3f
    std_msgs/Float32 x 
    std_msgs/Float32 y 
    std_msgs/Float32 z 
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
    const resolved = new FreeSpaceInfos(null);
    if (msg.fs_pts !== undefined) {
      resolved.fs_pts = new Array(msg.fs_pts.length);
      for (let i = 0; i < resolved.fs_pts.length; ++i) {
        resolved.fs_pts[i] = Point3f.Resolve(msg.fs_pts[i]);
      }
    }
    else {
      resolved.fs_pts = []
    }

    if (msg.fs_confidence !== undefined) {
      resolved.fs_confidence = new Array(msg.fs_confidence.length);
      for (let i = 0; i < resolved.fs_confidence.length; ++i) {
        resolved.fs_confidence[i] = std_msgs.msg.Float32.Resolve(msg.fs_confidence[i]);
      }
    }
    else {
      resolved.fs_confidence = []
    }

    return resolved;
    }
};

module.exports = FreeSpaceInfos;
