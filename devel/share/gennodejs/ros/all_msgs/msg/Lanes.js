// Auto-generated. Do not edit!

// (in-package all_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Lane = require('./Lane.js');

//-----------------------------------------------------------

class Lanes {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lanes = null;
    }
    else {
      if (initObj.hasOwnProperty('lanes')) {
        this.lanes = initObj.lanes
      }
      else {
        this.lanes = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Lanes
    // Serialize message field [lanes]
    // Serialize the length for message field [lanes]
    bufferOffset = _serializer.uint32(obj.lanes.length, buffer, bufferOffset);
    obj.lanes.forEach((val) => {
      bufferOffset = Lane.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Lanes
    let len;
    let data = new Lanes(null);
    // Deserialize message field [lanes]
    // Deserialize array length for message field [lanes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lanes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lanes[i] = Lane.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 52 * object.lanes.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'all_msgs/Lanes';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8c91e3b4d885a65b5ff2c91de75a06a9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Lane[] lanes
    ================================================================================
    MSG: all_msgs/Lane
    std_msgs/Int32   lane_id 
    Curve            curve 
    EndPoints        end_points 
    std_msgs/Int32   measure_status  
    std_msgs/Float32 confidence 
    
    ================================================================================
    MSG: std_msgs/Int32
    int32 data
    ================================================================================
    MSG: all_msgs/Curve
    std_msgs/Float32 x_start 
    std_msgs/Float32 x_end 
    std_msgs/Float32 a 
    std_msgs/Float32 b 
    std_msgs/Float32 c 
    std_msgs/Float32 d 
    ================================================================================
    MSG: std_msgs/Float32
    float32 data
    ================================================================================
    MSG: all_msgs/EndPoints
    Point2f start 
    Point2f end 
    
    ================================================================================
    MSG: all_msgs/Point2f
    std_msgs/Float32 x 
    std_msgs/Float32 y 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Lanes(null);
    if (msg.lanes !== undefined) {
      resolved.lanes = new Array(msg.lanes.length);
      for (let i = 0; i < resolved.lanes.length; ++i) {
        resolved.lanes[i] = Lane.Resolve(msg.lanes[i]);
      }
    }
    else {
      resolved.lanes = []
    }

    return resolved;
    }
};

module.exports = Lanes;
