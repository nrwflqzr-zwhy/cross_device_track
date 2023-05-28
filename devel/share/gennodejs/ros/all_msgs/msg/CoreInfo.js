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

class CoreInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp = null;
      this.priority_id = null;
      this.exist_confidence = null;
      this.center = null;
      this.center_cov = null;
      this.size = null;
      this.size_cov = null;
      this.direction = null;
      this.direction_cov = null;
      this.type = null;
      this.type_confidence = null;
      this.attention_type = null;
      this.motion_state = null;
      this.lane_pos = null;
      this.trakcer_id = null;
      this.age = null;
      this.velocity = null;
      this.velocity_cov = null;
      this.acceleration = null;
      this.acceleration_cov = null;
      this.angle_velocity = null;
      this.angle_velocity_cov = null;
      this.angle_acceleration = null;
      this.angle_acceleration_cov = null;
      this.anchor = null;
      this.nearest_point = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('priority_id')) {
        this.priority_id = initObj.priority_id
      }
      else {
        this.priority_id = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('exist_confidence')) {
        this.exist_confidence = initObj.exist_confidence
      }
      else {
        this.exist_confidence = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('center')) {
        this.center = initObj.center
      }
      else {
        this.center = new Point3f();
      }
      if (initObj.hasOwnProperty('center_cov')) {
        this.center_cov = initObj.center_cov
      }
      else {
        this.center_cov = new Point3f();
      }
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = new Point3f();
      }
      if (initObj.hasOwnProperty('size_cov')) {
        this.size_cov = initObj.size_cov
      }
      else {
        this.size_cov = new Point3f();
      }
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = new Point3f();
      }
      if (initObj.hasOwnProperty('direction_cov')) {
        this.direction_cov = initObj.direction_cov
      }
      else {
        this.direction_cov = new Point3f();
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('type_confidence')) {
        this.type_confidence = initObj.type_confidence
      }
      else {
        this.type_confidence = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('attention_type')) {
        this.attention_type = initObj.attention_type
      }
      else {
        this.attention_type = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('motion_state')) {
        this.motion_state = initObj.motion_state
      }
      else {
        this.motion_state = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('lane_pos')) {
        this.lane_pos = initObj.lane_pos
      }
      else {
        this.lane_pos = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('trakcer_id')) {
        this.trakcer_id = initObj.trakcer_id
      }
      else {
        this.trakcer_id = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('age')) {
        this.age = initObj.age
      }
      else {
        this.age = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new Point3f();
      }
      if (initObj.hasOwnProperty('velocity_cov')) {
        this.velocity_cov = initObj.velocity_cov
      }
      else {
        this.velocity_cov = new Point3f();
      }
      if (initObj.hasOwnProperty('acceleration')) {
        this.acceleration = initObj.acceleration
      }
      else {
        this.acceleration = new Point3f();
      }
      if (initObj.hasOwnProperty('acceleration_cov')) {
        this.acceleration_cov = initObj.acceleration_cov
      }
      else {
        this.acceleration_cov = new Point3f();
      }
      if (initObj.hasOwnProperty('angle_velocity')) {
        this.angle_velocity = initObj.angle_velocity
      }
      else {
        this.angle_velocity = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('angle_velocity_cov')) {
        this.angle_velocity_cov = initObj.angle_velocity_cov
      }
      else {
        this.angle_velocity_cov = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('angle_acceleration')) {
        this.angle_acceleration = initObj.angle_acceleration
      }
      else {
        this.angle_acceleration = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('angle_acceleration_cov')) {
        this.angle_acceleration_cov = initObj.angle_acceleration_cov
      }
      else {
        this.angle_acceleration_cov = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('anchor')) {
        this.anchor = initObj.anchor
      }
      else {
        this.anchor = new Point3f();
      }
      if (initObj.hasOwnProperty('nearest_point')) {
        this.nearest_point = initObj.nearest_point
      }
      else {
        this.nearest_point = new Point3f();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CoreInfo
    // Serialize message field [timestamp]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [priority_id]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.priority_id, buffer, bufferOffset);
    // Serialize message field [exist_confidence]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.exist_confidence, buffer, bufferOffset);
    // Serialize message field [center]
    bufferOffset = Point3f.serialize(obj.center, buffer, bufferOffset);
    // Serialize message field [center_cov]
    bufferOffset = Point3f.serialize(obj.center_cov, buffer, bufferOffset);
    // Serialize message field [size]
    bufferOffset = Point3f.serialize(obj.size, buffer, bufferOffset);
    // Serialize message field [size_cov]
    bufferOffset = Point3f.serialize(obj.size_cov, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = Point3f.serialize(obj.direction, buffer, bufferOffset);
    // Serialize message field [direction_cov]
    bufferOffset = Point3f.serialize(obj.direction_cov, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [type_confidence]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.type_confidence, buffer, bufferOffset);
    // Serialize message field [attention_type]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.attention_type, buffer, bufferOffset);
    // Serialize message field [motion_state]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.motion_state, buffer, bufferOffset);
    // Serialize message field [lane_pos]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.lane_pos, buffer, bufferOffset);
    // Serialize message field [trakcer_id]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.trakcer_id, buffer, bufferOffset);
    // Serialize message field [age]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.age, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = Point3f.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [velocity_cov]
    bufferOffset = Point3f.serialize(obj.velocity_cov, buffer, bufferOffset);
    // Serialize message field [acceleration]
    bufferOffset = Point3f.serialize(obj.acceleration, buffer, bufferOffset);
    // Serialize message field [acceleration_cov]
    bufferOffset = Point3f.serialize(obj.acceleration_cov, buffer, bufferOffset);
    // Serialize message field [angle_velocity]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.angle_velocity, buffer, bufferOffset);
    // Serialize message field [angle_velocity_cov]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.angle_velocity_cov, buffer, bufferOffset);
    // Serialize message field [angle_acceleration]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.angle_acceleration, buffer, bufferOffset);
    // Serialize message field [angle_acceleration_cov]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.angle_acceleration_cov, buffer, bufferOffset);
    // Serialize message field [anchor]
    bufferOffset = Point3f.serialize(obj.anchor, buffer, bufferOffset);
    // Serialize message field [nearest_point]
    bufferOffset = Point3f.serialize(obj.nearest_point, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CoreInfo
    let len;
    let data = new CoreInfo(null);
    // Deserialize message field [timestamp]
    data.timestamp = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [priority_id]
    data.priority_id = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [exist_confidence]
    data.exist_confidence = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [center]
    data.center = Point3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [center_cov]
    data.center_cov = Point3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [size]
    data.size = Point3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [size_cov]
    data.size_cov = Point3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = Point3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [direction_cov]
    data.direction_cov = Point3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [type_confidence]
    data.type_confidence = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [attention_type]
    data.attention_type = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [motion_state]
    data.motion_state = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [lane_pos]
    data.lane_pos = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [trakcer_id]
    data.trakcer_id = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [age]
    data.age = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = Point3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity_cov]
    data.velocity_cov = Point3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [acceleration]
    data.acceleration = Point3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [acceleration_cov]
    data.acceleration_cov = Point3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [angle_velocity]
    data.angle_velocity = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [angle_velocity_cov]
    data.angle_velocity_cov = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [angle_acceleration]
    data.angle_acceleration = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [angle_acceleration_cov]
    data.angle_acceleration_cov = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [anchor]
    data.anchor = Point3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [nearest_point]
    data.nearest_point = Point3f.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 208;
  }

  static datatype() {
    // Returns string type for a message object
    return 'all_msgs/CoreInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7f0ff990bf278ab87b544233b3a79e70';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Float64 timestamp
    
    std_msgs/Int32 priority_id
    std_msgs/Float32 exist_confidence 
    Point3f          center 
    Point3f          center_cov 
    Point3f          size 
    Point3f          size_cov 
    Point3f          direction 
    Point3f          direction_cov         
    std_msgs/Int32   type 
    std_msgs/Float32 type_confidence 
    std_msgs/Int32   attention_type 
    std_msgs/Int32   motion_state
    std_msgs/Int32   lane_pos
    std_msgs/Int32   trakcer_id 
    std_msgs/Float64 age 
    Point3f          velocity 
    Point3f          velocity_cov 
    Point3f          acceleration 
    Point3f          acceleration_cov 
    std_msgs/Float32 angle_velocity 
    std_msgs/Float32 angle_velocity_cov 
    std_msgs/Float32 angle_acceleration 
    std_msgs/Float32 angle_acceleration_cov  
    Point3f          anchor 
    Point3f          nearest_point 
    
    
    ================================================================================
    MSG: std_msgs/Float64
    float64 data
    ================================================================================
    MSG: std_msgs/Int32
    int32 data
    ================================================================================
    MSG: std_msgs/Float32
    float32 data
    ================================================================================
    MSG: all_msgs/Point3f
    std_msgs/Float32 x 
    std_msgs/Float32 y 
    std_msgs/Float32 z 
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CoreInfo(null);
    if (msg.timestamp !== undefined) {
      resolved.timestamp = std_msgs.msg.Float64.Resolve(msg.timestamp)
    }
    else {
      resolved.timestamp = new std_msgs.msg.Float64()
    }

    if (msg.priority_id !== undefined) {
      resolved.priority_id = std_msgs.msg.Int32.Resolve(msg.priority_id)
    }
    else {
      resolved.priority_id = new std_msgs.msg.Int32()
    }

    if (msg.exist_confidence !== undefined) {
      resolved.exist_confidence = std_msgs.msg.Float32.Resolve(msg.exist_confidence)
    }
    else {
      resolved.exist_confidence = new std_msgs.msg.Float32()
    }

    if (msg.center !== undefined) {
      resolved.center = Point3f.Resolve(msg.center)
    }
    else {
      resolved.center = new Point3f()
    }

    if (msg.center_cov !== undefined) {
      resolved.center_cov = Point3f.Resolve(msg.center_cov)
    }
    else {
      resolved.center_cov = new Point3f()
    }

    if (msg.size !== undefined) {
      resolved.size = Point3f.Resolve(msg.size)
    }
    else {
      resolved.size = new Point3f()
    }

    if (msg.size_cov !== undefined) {
      resolved.size_cov = Point3f.Resolve(msg.size_cov)
    }
    else {
      resolved.size_cov = new Point3f()
    }

    if (msg.direction !== undefined) {
      resolved.direction = Point3f.Resolve(msg.direction)
    }
    else {
      resolved.direction = new Point3f()
    }

    if (msg.direction_cov !== undefined) {
      resolved.direction_cov = Point3f.Resolve(msg.direction_cov)
    }
    else {
      resolved.direction_cov = new Point3f()
    }

    if (msg.type !== undefined) {
      resolved.type = std_msgs.msg.Int32.Resolve(msg.type)
    }
    else {
      resolved.type = new std_msgs.msg.Int32()
    }

    if (msg.type_confidence !== undefined) {
      resolved.type_confidence = std_msgs.msg.Float32.Resolve(msg.type_confidence)
    }
    else {
      resolved.type_confidence = new std_msgs.msg.Float32()
    }

    if (msg.attention_type !== undefined) {
      resolved.attention_type = std_msgs.msg.Int32.Resolve(msg.attention_type)
    }
    else {
      resolved.attention_type = new std_msgs.msg.Int32()
    }

    if (msg.motion_state !== undefined) {
      resolved.motion_state = std_msgs.msg.Int32.Resolve(msg.motion_state)
    }
    else {
      resolved.motion_state = new std_msgs.msg.Int32()
    }

    if (msg.lane_pos !== undefined) {
      resolved.lane_pos = std_msgs.msg.Int32.Resolve(msg.lane_pos)
    }
    else {
      resolved.lane_pos = new std_msgs.msg.Int32()
    }

    if (msg.trakcer_id !== undefined) {
      resolved.trakcer_id = std_msgs.msg.Int32.Resolve(msg.trakcer_id)
    }
    else {
      resolved.trakcer_id = new std_msgs.msg.Int32()
    }

    if (msg.age !== undefined) {
      resolved.age = std_msgs.msg.Float64.Resolve(msg.age)
    }
    else {
      resolved.age = new std_msgs.msg.Float64()
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = Point3f.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new Point3f()
    }

    if (msg.velocity_cov !== undefined) {
      resolved.velocity_cov = Point3f.Resolve(msg.velocity_cov)
    }
    else {
      resolved.velocity_cov = new Point3f()
    }

    if (msg.acceleration !== undefined) {
      resolved.acceleration = Point3f.Resolve(msg.acceleration)
    }
    else {
      resolved.acceleration = new Point3f()
    }

    if (msg.acceleration_cov !== undefined) {
      resolved.acceleration_cov = Point3f.Resolve(msg.acceleration_cov)
    }
    else {
      resolved.acceleration_cov = new Point3f()
    }

    if (msg.angle_velocity !== undefined) {
      resolved.angle_velocity = std_msgs.msg.Float32.Resolve(msg.angle_velocity)
    }
    else {
      resolved.angle_velocity = new std_msgs.msg.Float32()
    }

    if (msg.angle_velocity_cov !== undefined) {
      resolved.angle_velocity_cov = std_msgs.msg.Float32.Resolve(msg.angle_velocity_cov)
    }
    else {
      resolved.angle_velocity_cov = new std_msgs.msg.Float32()
    }

    if (msg.angle_acceleration !== undefined) {
      resolved.angle_acceleration = std_msgs.msg.Float32.Resolve(msg.angle_acceleration)
    }
    else {
      resolved.angle_acceleration = new std_msgs.msg.Float32()
    }

    if (msg.angle_acceleration_cov !== undefined) {
      resolved.angle_acceleration_cov = std_msgs.msg.Float32.Resolve(msg.angle_acceleration_cov)
    }
    else {
      resolved.angle_acceleration_cov = new std_msgs.msg.Float32()
    }

    if (msg.anchor !== undefined) {
      resolved.anchor = Point3f.Resolve(msg.anchor)
    }
    else {
      resolved.anchor = new Point3f()
    }

    if (msg.nearest_point !== undefined) {
      resolved.nearest_point = Point3f.Resolve(msg.nearest_point)
    }
    else {
      resolved.nearest_point = new Point3f()
    }

    return resolved;
    }
};

module.exports = CoreInfo;
