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

class Pose {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.z = null;
      this.roll = null;
      this.pitch = null;
      this.yaw = null;
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('roll')) {
        this.roll = initObj.roll
      }
      else {
        this.roll = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = new std_msgs.msg.Int32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Pose
    // Serialize message field [x]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.z, buffer, bufferOffset);
    // Serialize message field [roll]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.roll, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.pitch, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.yaw, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Pose
    let len;
    let data = new Pose(null);
    // Deserialize message field [x]
    data.x = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [roll]
    data.roll = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'all_msgs/Pose';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '519b8f1b8da97c340862edf4f757de6c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Pose(null);
    if (msg.x !== undefined) {
      resolved.x = std_msgs.msg.Float32.Resolve(msg.x)
    }
    else {
      resolved.x = new std_msgs.msg.Float32()
    }

    if (msg.y !== undefined) {
      resolved.y = std_msgs.msg.Float32.Resolve(msg.y)
    }
    else {
      resolved.y = new std_msgs.msg.Float32()
    }

    if (msg.z !== undefined) {
      resolved.z = std_msgs.msg.Float32.Resolve(msg.z)
    }
    else {
      resolved.z = new std_msgs.msg.Float32()
    }

    if (msg.roll !== undefined) {
      resolved.roll = std_msgs.msg.Float32.Resolve(msg.roll)
    }
    else {
      resolved.roll = new std_msgs.msg.Float32()
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = std_msgs.msg.Float32.Resolve(msg.pitch)
    }
    else {
      resolved.pitch = new std_msgs.msg.Float32()
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = std_msgs.msg.Float32.Resolve(msg.yaw)
    }
    else {
      resolved.yaw = new std_msgs.msg.Float32()
    }

    if (msg.status !== undefined) {
      resolved.status = std_msgs.msg.Int32.Resolve(msg.status)
    }
    else {
      resolved.status = new std_msgs.msg.Int32()
    }

    return resolved;
    }
};

module.exports = Pose;
