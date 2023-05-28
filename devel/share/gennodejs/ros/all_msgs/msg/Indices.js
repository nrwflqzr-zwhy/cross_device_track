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

class Indices {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.indices = null;
    }
    else {
      if (initObj.hasOwnProperty('indices')) {
        this.indices = initObj.indices
      }
      else {
        this.indices = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Indices
    // Serialize message field [indices]
    // Serialize the length for message field [indices]
    bufferOffset = _serializer.uint32(obj.indices.length, buffer, bufferOffset);
    obj.indices.forEach((val) => {
      bufferOffset = std_msgs.msg.Int32.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Indices
    let len;
    let data = new Indices(null);
    // Deserialize message field [indices]
    // Deserialize array length for message field [indices]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.indices = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.indices[i] = std_msgs.msg.Int32.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.indices.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'all_msgs/Indices';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '355aaec182bd3a24f494f1ab4a82fd9e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Int32[]    indices
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
    const resolved = new Indices(null);
    if (msg.indices !== undefined) {
      resolved.indices = new Array(msg.indices.length);
      for (let i = 0; i < resolved.indices.length; ++i) {
        resolved.indices[i] = std_msgs.msg.Int32.Resolve(msg.indices[i]);
      }
    }
    else {
      resolved.indices = []
    }

    return resolved;
    }
};

module.exports = Indices;
