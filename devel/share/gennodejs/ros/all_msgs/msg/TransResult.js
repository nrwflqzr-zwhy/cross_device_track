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

class TransResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.timestamp = null;
      this.size = null;
      this.center = null;
      this.velocity = null;
      this.type = null;
      this.detection_name = null;
      this.ct = null;
      this.tracking = null;
      this.label_preds = null;
      this.tracking_id = null;
      this.age = null;
      this.active = null;
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
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = new Point3f();
      }
      if (initObj.hasOwnProperty('center')) {
        this.center = initObj.center
      }
      else {
        this.center = new Point3f();
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new Point3f();
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('detection_name')) {
        this.detection_name = initObj.detection_name
      }
      else {
        this.detection_name = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('ct')) {
        this.ct = initObj.ct
      }
      else {
        this.ct = [];
      }
      if (initObj.hasOwnProperty('tracking')) {
        this.tracking = initObj.tracking
      }
      else {
        this.tracking = [];
      }
      if (initObj.hasOwnProperty('label_preds')) {
        this.label_preds = initObj.label_preds
      }
      else {
        this.label_preds = 0;
      }
      if (initObj.hasOwnProperty('tracking_id')) {
        this.tracking_id = initObj.tracking_id
      }
      else {
        this.tracking_id = 0;
      }
      if (initObj.hasOwnProperty('age')) {
        this.age = initObj.age
      }
      else {
        this.age = 0;
      }
      if (initObj.hasOwnProperty('active')) {
        this.active = initObj.active
      }
      else {
        this.active = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TransResult
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [timestamp]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [size]
    bufferOffset = Point3f.serialize(obj.size, buffer, bufferOffset);
    // Serialize message field [center]
    bufferOffset = Point3f.serialize(obj.center, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = Point3f.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [detection_name]
    bufferOffset = std_msgs.msg.String.serialize(obj.detection_name, buffer, bufferOffset);
    // Serialize message field [ct]
    bufferOffset = _arraySerializer.int32(obj.ct, buffer, bufferOffset, null);
    // Serialize message field [tracking]
    bufferOffset = _arraySerializer.int32(obj.tracking, buffer, bufferOffset, null);
    // Serialize message field [label_preds]
    bufferOffset = _serializer.int32(obj.label_preds, buffer, bufferOffset);
    // Serialize message field [tracking_id]
    bufferOffset = _serializer.int32(obj.tracking_id, buffer, bufferOffset);
    // Serialize message field [age]
    bufferOffset = _serializer.int32(obj.age, buffer, bufferOffset);
    // Serialize message field [active]
    bufferOffset = _serializer.int32(obj.active, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TransResult
    let len;
    let data = new TransResult(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [timestamp]
    data.timestamp = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [size]
    data.size = Point3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [center]
    data.center = Point3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = Point3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [detection_name]
    data.detection_name = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [ct]
    data.ct = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [tracking]
    data.tracking = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [label_preds]
    data.label_preds = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [tracking_id]
    data.tracking_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [age]
    data.age = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [active]
    data.active = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += std_msgs.msg.String.getMessageSize(object.detection_name);
    length += 4 * object.ct.length;
    length += 4 * object.tracking.length;
    return length + 72;
  }

  static datatype() {
    // Returns string type for a message object
    return 'all_msgs/TransResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '306dc6cbac8c1352da94701707ad2094';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new TransResult(null);
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

    if (msg.size !== undefined) {
      resolved.size = Point3f.Resolve(msg.size)
    }
    else {
      resolved.size = new Point3f()
    }

    if (msg.center !== undefined) {
      resolved.center = Point3f.Resolve(msg.center)
    }
    else {
      resolved.center = new Point3f()
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = Point3f.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new Point3f()
    }

    if (msg.type !== undefined) {
      resolved.type = std_msgs.msg.Int32.Resolve(msg.type)
    }
    else {
      resolved.type = new std_msgs.msg.Int32()
    }

    if (msg.detection_name !== undefined) {
      resolved.detection_name = std_msgs.msg.String.Resolve(msg.detection_name)
    }
    else {
      resolved.detection_name = new std_msgs.msg.String()
    }

    if (msg.ct !== undefined) {
      resolved.ct = msg.ct;
    }
    else {
      resolved.ct = []
    }

    if (msg.tracking !== undefined) {
      resolved.tracking = msg.tracking;
    }
    else {
      resolved.tracking = []
    }

    if (msg.label_preds !== undefined) {
      resolved.label_preds = msg.label_preds;
    }
    else {
      resolved.label_preds = 0
    }

    if (msg.tracking_id !== undefined) {
      resolved.tracking_id = msg.tracking_id;
    }
    else {
      resolved.tracking_id = 0
    }

    if (msg.age !== undefined) {
      resolved.age = msg.age;
    }
    else {
      resolved.age = 0
    }

    if (msg.active !== undefined) {
      resolved.active = msg.active;
    }
    else {
      resolved.active = 0
    }

    return resolved;
    }
};

module.exports = TransResult;
