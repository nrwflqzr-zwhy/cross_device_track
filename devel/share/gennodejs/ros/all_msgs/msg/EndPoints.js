// Auto-generated. Do not edit!

// (in-package all_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Point2f = require('./Point2f.js');

//-----------------------------------------------------------

class EndPoints {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start = null;
      this.end = null;
    }
    else {
      if (initObj.hasOwnProperty('start')) {
        this.start = initObj.start
      }
      else {
        this.start = new Point2f();
      }
      if (initObj.hasOwnProperty('end')) {
        this.end = initObj.end
      }
      else {
        this.end = new Point2f();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EndPoints
    // Serialize message field [start]
    bufferOffset = Point2f.serialize(obj.start, buffer, bufferOffset);
    // Serialize message field [end]
    bufferOffset = Point2f.serialize(obj.end, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EndPoints
    let len;
    let data = new EndPoints(null);
    // Deserialize message field [start]
    data.start = Point2f.deserialize(buffer, bufferOffset);
    // Deserialize message field [end]
    data.end = Point2f.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'all_msgs/EndPoints';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8837e560fc11e0ded6ca2f9a297edb61';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Point2f start 
    Point2f end 
    
    ================================================================================
    MSG: all_msgs/Point2f
    std_msgs/Float32 x 
    std_msgs/Float32 y 
    
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
    const resolved = new EndPoints(null);
    if (msg.start !== undefined) {
      resolved.start = Point2f.Resolve(msg.start)
    }
    else {
      resolved.start = new Point2f()
    }

    if (msg.end !== undefined) {
      resolved.end = Point2f.Resolve(msg.end)
    }
    else {
      resolved.end = new Point2f()
    }

    return resolved;
    }
};

module.exports = EndPoints;
