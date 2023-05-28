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

class Curve {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x_start = null;
      this.x_end = null;
      this.a = null;
      this.b = null;
      this.c = null;
      this.d = null;
    }
    else {
      if (initObj.hasOwnProperty('x_start')) {
        this.x_start = initObj.x_start
      }
      else {
        this.x_start = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('x_end')) {
        this.x_end = initObj.x_end
      }
      else {
        this.x_end = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('a')) {
        this.a = initObj.a
      }
      else {
        this.a = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('b')) {
        this.b = initObj.b
      }
      else {
        this.b = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('c')) {
        this.c = initObj.c
      }
      else {
        this.c = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('d')) {
        this.d = initObj.d
      }
      else {
        this.d = new std_msgs.msg.Float32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Curve
    // Serialize message field [x_start]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.x_start, buffer, bufferOffset);
    // Serialize message field [x_end]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.x_end, buffer, bufferOffset);
    // Serialize message field [a]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.a, buffer, bufferOffset);
    // Serialize message field [b]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.b, buffer, bufferOffset);
    // Serialize message field [c]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.c, buffer, bufferOffset);
    // Serialize message field [d]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.d, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Curve
    let len;
    let data = new Curve(null);
    // Deserialize message field [x_start]
    data.x_start = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [x_end]
    data.x_end = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [a]
    data.a = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [b]
    data.b = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [c]
    data.c = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [d]
    data.d = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'all_msgs/Curve';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9a544adf692f69bcc100499d862d09b5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Float32 x_start 
    std_msgs/Float32 x_end 
    std_msgs/Float32 a 
    std_msgs/Float32 b 
    std_msgs/Float32 c 
    std_msgs/Float32 d 
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
    const resolved = new Curve(null);
    if (msg.x_start !== undefined) {
      resolved.x_start = std_msgs.msg.Float32.Resolve(msg.x_start)
    }
    else {
      resolved.x_start = new std_msgs.msg.Float32()
    }

    if (msg.x_end !== undefined) {
      resolved.x_end = std_msgs.msg.Float32.Resolve(msg.x_end)
    }
    else {
      resolved.x_end = new std_msgs.msg.Float32()
    }

    if (msg.a !== undefined) {
      resolved.a = std_msgs.msg.Float32.Resolve(msg.a)
    }
    else {
      resolved.a = new std_msgs.msg.Float32()
    }

    if (msg.b !== undefined) {
      resolved.b = std_msgs.msg.Float32.Resolve(msg.b)
    }
    else {
      resolved.b = new std_msgs.msg.Float32()
    }

    if (msg.c !== undefined) {
      resolved.c = std_msgs.msg.Float32.Resolve(msg.c)
    }
    else {
      resolved.c = new std_msgs.msg.Float32()
    }

    if (msg.d !== undefined) {
      resolved.d = std_msgs.msg.Float32.Resolve(msg.d)
    }
    else {
      resolved.d = new std_msgs.msg.Float32()
    }

    return resolved;
    }
};

module.exports = Curve;
