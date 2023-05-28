// Auto-generated. Do not edit!

// (in-package all_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TransResult = require('./TransResult.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TransResultArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.timestamp = null;
      this.percept_results = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('percept_results')) {
        this.percept_results = initObj.percept_results
      }
      else {
        this.percept_results = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TransResultArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [timestamp]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [percept_results]
    // Serialize the length for message field [percept_results]
    bufferOffset = _serializer.uint32(obj.percept_results.length, buffer, bufferOffset);
    obj.percept_results.forEach((val) => {
      bufferOffset = TransResult.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TransResultArray
    let len;
    let data = new TransResultArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [timestamp]
    data.timestamp = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [percept_results]
    // Deserialize array length for message field [percept_results]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.percept_results = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.percept_results[i] = TransResult.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.percept_results.forEach((val) => {
      length += TransResult.getMessageSize(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'all_msgs/TransResultArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3dc2c2ad61b7400d12ab8d2481f10686';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    std_msgs/Float64 timestamp 
    TransResult[] percept_results
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: std_msgs/Float64
    float64 data
    ================================================================================
    MSG: all_msgs/TransResult
    std_msgs/Header header
    std_msgs/Float64 timestamp 
    Point3f          size 
    Point3f          center 
    Point3f          velocity
    std_msgs/Int32   type 
    std_msgs/String detection_name
    int32[] ct
    int32[] tracking
    int32 label_preds
    int32 tracking_id
    int32 age
    int32 active
    ================================================================================
    MSG: all_msgs/Point3f
    std_msgs/Float32 x 
    std_msgs/Float32 y 
    std_msgs/Float32 z 
    ================================================================================
    MSG: std_msgs/Float32
    float32 data
    ================================================================================
    MSG: std_msgs/Int32
    int32 data
    ================================================================================
    MSG: std_msgs/String
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TransResultArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.timestamp !== undefined) {
      resolved.timestamp = std_msgs.msg.Float64.Resolve(msg.timestamp)
    }
    else {
      resolved.timestamp = new std_msgs.msg.Float64()
    }

    if (msg.percept_results !== undefined) {
      resolved.percept_results = new Array(msg.percept_results.length);
      for (let i = 0; i < resolved.percept_results.length; ++i) {
        resolved.percept_results[i] = TransResult.Resolve(msg.percept_results[i]);
      }
    }
    else {
      resolved.percept_results = []
    }

    return resolved;
    }
};

module.exports = TransResultArray;
