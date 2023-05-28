// Auto-generated. Do not edit!

// (in-package all_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Curve = require('./Curve.js');
let EndPoints = require('./EndPoints.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Lane {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lane_id = null;
      this.curve = null;
      this.end_points = null;
      this.measure_status = null;
      this.confidence = null;
    }
    else {
      if (initObj.hasOwnProperty('lane_id')) {
        this.lane_id = initObj.lane_id
      }
      else {
        this.lane_id = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('curve')) {
        this.curve = initObj.curve
      }
      else {
        this.curve = new Curve();
      }
      if (initObj.hasOwnProperty('end_points')) {
        this.end_points = initObj.end_points
      }
      else {
        this.end_points = new EndPoints();
      }
      if (initObj.hasOwnProperty('measure_status')) {
        this.measure_status = initObj.measure_status
      }
      else {
        this.measure_status = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = new std_msgs.msg.Float32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Lane
    // Serialize message field [lane_id]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.lane_id, buffer, bufferOffset);
    // Serialize message field [curve]
    bufferOffset = Curve.serialize(obj.curve, buffer, bufferOffset);
    // Serialize message field [end_points]
    bufferOffset = EndPoints.serialize(obj.end_points, buffer, bufferOffset);
    // Serialize message field [measure_status]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.measure_status, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.confidence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Lane
    let len;
    let data = new Lane(null);
    // Deserialize message field [lane_id]
    data.lane_id = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [curve]
    data.curve = Curve.deserialize(buffer, bufferOffset);
    // Deserialize message field [end_points]
    data.end_points = EndPoints.deserialize(buffer, bufferOffset);
    // Deserialize message field [measure_status]
    data.measure_status = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'all_msgs/Lane';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fd19b0521fb882c8cb26592918c30eb4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Lane(null);
    if (msg.lane_id !== undefined) {
      resolved.lane_id = std_msgs.msg.Int32.Resolve(msg.lane_id)
    }
    else {
      resolved.lane_id = new std_msgs.msg.Int32()
    }

    if (msg.curve !== undefined) {
      resolved.curve = Curve.Resolve(msg.curve)
    }
    else {
      resolved.curve = new Curve()
    }

    if (msg.end_points !== undefined) {
      resolved.end_points = EndPoints.Resolve(msg.end_points)
    }
    else {
      resolved.end_points = new EndPoints()
    }

    if (msg.measure_status !== undefined) {
      resolved.measure_status = std_msgs.msg.Int32.Resolve(msg.measure_status)
    }
    else {
      resolved.measure_status = new std_msgs.msg.Int32()
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = std_msgs.msg.Float32.Resolve(msg.confidence)
    }
    else {
      resolved.confidence = new std_msgs.msg.Float32()
    }

    return resolved;
    }
};

module.exports = Lane;
