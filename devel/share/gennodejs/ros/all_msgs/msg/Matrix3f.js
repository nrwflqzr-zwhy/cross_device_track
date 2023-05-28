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

class Matrix3f {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.matrix3x3 = null;
    }
    else {
      if (initObj.hasOwnProperty('matrix3x3')) {
        this.matrix3x3 = initObj.matrix3x3
      }
      else {
        this.matrix3x3 = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Matrix3f
    // Serialize message field [matrix3x3]
    // Serialize the length for message field [matrix3x3]
    bufferOffset = _serializer.uint32(obj.matrix3x3.length, buffer, bufferOffset);
    obj.matrix3x3.forEach((val) => {
      bufferOffset = std_msgs.msg.Float32.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Matrix3f
    let len;
    let data = new Matrix3f(null);
    // Deserialize message field [matrix3x3]
    // Deserialize array length for message field [matrix3x3]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.matrix3x3 = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.matrix3x3[i] = std_msgs.msg.Float32.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.matrix3x3.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'all_msgs/Matrix3f';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f92b4745b327860ddb3bbad95d45b5bf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Float32[] matrix3x3 
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
    const resolved = new Matrix3f(null);
    if (msg.matrix3x3 !== undefined) {
      resolved.matrix3x3 = new Array(msg.matrix3x3.length);
      for (let i = 0; i < resolved.matrix3x3.length; ++i) {
        resolved.matrix3x3[i] = std_msgs.msg.Float32.Resolve(msg.matrix3x3[i]);
      }
    }
    else {
      resolved.matrix3x3 = []
    }

    return resolved;
    }
};

module.exports = Matrix3f;
