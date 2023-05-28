// Auto-generated. Do not edit!

// (in-package all_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DetectedObject = require('./DetectedObject.js');

//-----------------------------------------------------------

class DetectedObjectArrayFilter {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timeStamp = null;
      this.objects = null;
      this.outRange = null;
    }
    else {
      if (initObj.hasOwnProperty('timeStamp')) {
        this.timeStamp = initObj.timeStamp
      }
      else {
        this.timeStamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('objects')) {
        this.objects = initObj.objects
      }
      else {
        this.objects = [];
      }
      if (initObj.hasOwnProperty('outRange')) {
        this.outRange = initObj.outRange
      }
      else {
        this.outRange = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DetectedObjectArrayFilter
    // Serialize message field [timeStamp]
    bufferOffset = _serializer.time(obj.timeStamp, buffer, bufferOffset);
    // Serialize message field [objects]
    // Serialize the length for message field [objects]
    bufferOffset = _serializer.uint32(obj.objects.length, buffer, bufferOffset);
    obj.objects.forEach((val) => {
      bufferOffset = DetectedObject.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [outRange]
    bufferOffset = _arraySerializer.uint32(obj.outRange, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DetectedObjectArrayFilter
    let len;
    let data = new DetectedObjectArrayFilter(null);
    // Deserialize message field [timeStamp]
    data.timeStamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [objects]
    // Deserialize array length for message field [objects]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.objects = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.objects[i] = DetectedObject.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [outRange]
    data.outRange = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.objects.forEach((val) => {
      length += DetectedObject.getMessageSize(val);
    });
    length += 4 * object.outRange.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'all_msgs/DetectedObjectArrayFilter';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '16bfdcf016f4d573ea2bc95caacb496e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time             timeStamp  ##### 消息推送时间戳
    DetectedObject[] objects    ##### 目标列表
    uint32[] outRange ####超出范围的人员或车辆列表
    
    
    ================================================================================
    MSG: all_msgs/DetectedObject
    std_msgs/Header    header
    
    uint32             id    ## target id
    string             type  ## target type
    float32            score ## confidence score
    
    float64            x     ## target coordinates
    float64            y
    float64            z
    
    float64            vx    ## target velocity
    float64            vy
    float64            vz
    
    
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DetectedObjectArrayFilter(null);
    if (msg.timeStamp !== undefined) {
      resolved.timeStamp = msg.timeStamp;
    }
    else {
      resolved.timeStamp = {secs: 0, nsecs: 0}
    }

    if (msg.objects !== undefined) {
      resolved.objects = new Array(msg.objects.length);
      for (let i = 0; i < resolved.objects.length; ++i) {
        resolved.objects[i] = DetectedObject.Resolve(msg.objects[i]);
      }
    }
    else {
      resolved.objects = []
    }

    if (msg.outRange !== undefined) {
      resolved.outRange = msg.outRange;
    }
    else {
      resolved.outRange = []
    }

    return resolved;
    }
};

module.exports = DetectedObjectArrayFilter;
