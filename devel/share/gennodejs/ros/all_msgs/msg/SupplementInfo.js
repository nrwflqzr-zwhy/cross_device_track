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
let Point3d = require('./Point3d.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SupplementInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.unique_id = null;
      this.polygon = null;
      this.left_point_index = null;
      this.right_point_index = null;
      this.cloud_indices = null;
      this.latent_types = null;
      this.size_type = null;
      this.mode = null;
      this.in_roi = null;
      this.tracking_state = null;
      this.geo_center = null;
      this.geo_size = null;
      this.trajectory = null;
      this.history_velocity = null;
      this.history_type = null;
      this.gps_mode = null;
      this.gps_info = null;
    }
    else {
      if (initObj.hasOwnProperty('unique_id')) {
        this.unique_id = initObj.unique_id
      }
      else {
        this.unique_id = new std_msgs.msg.UInt32();
      }
      if (initObj.hasOwnProperty('polygon')) {
        this.polygon = initObj.polygon
      }
      else {
        this.polygon = [];
      }
      if (initObj.hasOwnProperty('left_point_index')) {
        this.left_point_index = initObj.left_point_index
      }
      else {
        this.left_point_index = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('right_point_index')) {
        this.right_point_index = initObj.right_point_index
      }
      else {
        this.right_point_index = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('cloud_indices')) {
        this.cloud_indices = initObj.cloud_indices
      }
      else {
        this.cloud_indices = [];
      }
      if (initObj.hasOwnProperty('latent_types')) {
        this.latent_types = initObj.latent_types
      }
      else {
        this.latent_types = [];
      }
      if (initObj.hasOwnProperty('size_type')) {
        this.size_type = initObj.size_type
      }
      else {
        this.size_type = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('in_roi')) {
        this.in_roi = initObj.in_roi
      }
      else {
        this.in_roi = new std_msgs.msg.Bool();
      }
      if (initObj.hasOwnProperty('tracking_state')) {
        this.tracking_state = initObj.tracking_state
      }
      else {
        this.tracking_state = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('geo_center')) {
        this.geo_center = initObj.geo_center
      }
      else {
        this.geo_center = new Point3f();
      }
      if (initObj.hasOwnProperty('geo_size')) {
        this.geo_size = initObj.geo_size
      }
      else {
        this.geo_size = new Point3f();
      }
      if (initObj.hasOwnProperty('trajectory')) {
        this.trajectory = initObj.trajectory
      }
      else {
        this.trajectory = [];
      }
      if (initObj.hasOwnProperty('history_velocity')) {
        this.history_velocity = initObj.history_velocity
      }
      else {
        this.history_velocity = [];
      }
      if (initObj.hasOwnProperty('history_type')) {
        this.history_type = initObj.history_type
      }
      else {
        this.history_type = [];
      }
      if (initObj.hasOwnProperty('gps_mode')) {
        this.gps_mode = initObj.gps_mode
      }
      else {
        this.gps_mode = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('gps_info')) {
        this.gps_info = initObj.gps_info
      }
      else {
        this.gps_info = new Point3d();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SupplementInfo
    // Serialize message field [unique_id]
    bufferOffset = std_msgs.msg.UInt32.serialize(obj.unique_id, buffer, bufferOffset);
    // Serialize message field [polygon]
    // Serialize the length for message field [polygon]
    bufferOffset = _serializer.uint32(obj.polygon.length, buffer, bufferOffset);
    obj.polygon.forEach((val) => {
      bufferOffset = Point3f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [left_point_index]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.left_point_index, buffer, bufferOffset);
    // Serialize message field [right_point_index]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.right_point_index, buffer, bufferOffset);
    // Serialize message field [cloud_indices]
    // Serialize the length for message field [cloud_indices]
    bufferOffset = _serializer.uint32(obj.cloud_indices.length, buffer, bufferOffset);
    obj.cloud_indices.forEach((val) => {
      bufferOffset = std_msgs.msg.Int32.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [latent_types]
    // Serialize the length for message field [latent_types]
    bufferOffset = _serializer.uint32(obj.latent_types.length, buffer, bufferOffset);
    obj.latent_types.forEach((val) => {
      bufferOffset = std_msgs.msg.Float32.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [size_type]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.size_type, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.mode, buffer, bufferOffset);
    // Serialize message field [in_roi]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.in_roi, buffer, bufferOffset);
    // Serialize message field [tracking_state]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.tracking_state, buffer, bufferOffset);
    // Serialize message field [geo_center]
    bufferOffset = Point3f.serialize(obj.geo_center, buffer, bufferOffset);
    // Serialize message field [geo_size]
    bufferOffset = Point3f.serialize(obj.geo_size, buffer, bufferOffset);
    // Serialize message field [trajectory]
    // Serialize the length for message field [trajectory]
    bufferOffset = _serializer.uint32(obj.trajectory.length, buffer, bufferOffset);
    obj.trajectory.forEach((val) => {
      bufferOffset = Point3f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [history_velocity]
    // Serialize the length for message field [history_velocity]
    bufferOffset = _serializer.uint32(obj.history_velocity.length, buffer, bufferOffset);
    obj.history_velocity.forEach((val) => {
      bufferOffset = Point3f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [history_type]
    // Serialize the length for message field [history_type]
    bufferOffset = _serializer.uint32(obj.history_type.length, buffer, bufferOffset);
    obj.history_type.forEach((val) => {
      bufferOffset = std_msgs.msg.Int32.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [gps_mode]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.gps_mode, buffer, bufferOffset);
    // Serialize message field [gps_info]
    bufferOffset = Point3d.serialize(obj.gps_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SupplementInfo
    let len;
    let data = new SupplementInfo(null);
    // Deserialize message field [unique_id]
    data.unique_id = std_msgs.msg.UInt32.deserialize(buffer, bufferOffset);
    // Deserialize message field [polygon]
    // Deserialize array length for message field [polygon]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.polygon = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.polygon[i] = Point3f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [left_point_index]
    data.left_point_index = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [right_point_index]
    data.right_point_index = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [cloud_indices]
    // Deserialize array length for message field [cloud_indices]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.cloud_indices = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.cloud_indices[i] = std_msgs.msg.Int32.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [latent_types]
    // Deserialize array length for message field [latent_types]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.latent_types = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.latent_types[i] = std_msgs.msg.Float32.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [size_type]
    data.size_type = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [in_roi]
    data.in_roi = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    // Deserialize message field [tracking_state]
    data.tracking_state = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [geo_center]
    data.geo_center = Point3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [geo_size]
    data.geo_size = Point3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [trajectory]
    // Deserialize array length for message field [trajectory]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.trajectory = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.trajectory[i] = Point3f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [history_velocity]
    // Deserialize array length for message field [history_velocity]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.history_velocity = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.history_velocity[i] = Point3f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [history_type]
    // Deserialize array length for message field [history_type]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.history_type = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.history_type[i] = std_msgs.msg.Int32.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [gps_mode]
    data.gps_mode = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [gps_info]
    data.gps_info = Point3d.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 12 * object.polygon.length;
    length += 4 * object.cloud_indices.length;
    length += 4 * object.latent_types.length;
    length += 12 * object.trajectory.length;
    length += 12 * object.history_velocity.length;
    length += 4 * object.history_type.length;
    return length + 101;
  }

  static datatype() {
    // Returns string type for a message object
    return 'all_msgs/SupplementInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f732019e3813a01320832404d7727553';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/UInt32     unique_id
    
    Point3f[]           polygon
    std_msgs/Int32      left_point_index 
    std_msgs/Int32      right_point_index 
    
    std_msgs/Int32[]    cloud_indices
    
    std_msgs/Float32[]  latent_types
    std_msgs/Int32      size_type 
    std_msgs/Int32      mode 
    std_msgs/Bool       in_roi 
    std_msgs/Int32      tracking_state
    Point3f             geo_center 
    Point3f             geo_size 
    
    
    
    Point3f[]           trajectory 
    Point3f[]           history_velocity
    std_msgs/Int32[]    history_type 
    std_msgs/Int32      gps_mode 
    Point3d             gps_info 
    
    ================================================================================
    MSG: std_msgs/UInt32
    uint32 data
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
    MSG: std_msgs/Bool
    bool data
    ================================================================================
    MSG: all_msgs/Point3d
    std_msgs/Float64 x 
    std_msgs/Float64 y 
    std_msgs/Float64 z 
    
    ================================================================================
    MSG: std_msgs/Float64
    float64 data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SupplementInfo(null);
    if (msg.unique_id !== undefined) {
      resolved.unique_id = std_msgs.msg.UInt32.Resolve(msg.unique_id)
    }
    else {
      resolved.unique_id = new std_msgs.msg.UInt32()
    }

    if (msg.polygon !== undefined) {
      resolved.polygon = new Array(msg.polygon.length);
      for (let i = 0; i < resolved.polygon.length; ++i) {
        resolved.polygon[i] = Point3f.Resolve(msg.polygon[i]);
      }
    }
    else {
      resolved.polygon = []
    }

    if (msg.left_point_index !== undefined) {
      resolved.left_point_index = std_msgs.msg.Int32.Resolve(msg.left_point_index)
    }
    else {
      resolved.left_point_index = new std_msgs.msg.Int32()
    }

    if (msg.right_point_index !== undefined) {
      resolved.right_point_index = std_msgs.msg.Int32.Resolve(msg.right_point_index)
    }
    else {
      resolved.right_point_index = new std_msgs.msg.Int32()
    }

    if (msg.cloud_indices !== undefined) {
      resolved.cloud_indices = new Array(msg.cloud_indices.length);
      for (let i = 0; i < resolved.cloud_indices.length; ++i) {
        resolved.cloud_indices[i] = std_msgs.msg.Int32.Resolve(msg.cloud_indices[i]);
      }
    }
    else {
      resolved.cloud_indices = []
    }

    if (msg.latent_types !== undefined) {
      resolved.latent_types = new Array(msg.latent_types.length);
      for (let i = 0; i < resolved.latent_types.length; ++i) {
        resolved.latent_types[i] = std_msgs.msg.Float32.Resolve(msg.latent_types[i]);
      }
    }
    else {
      resolved.latent_types = []
    }

    if (msg.size_type !== undefined) {
      resolved.size_type = std_msgs.msg.Int32.Resolve(msg.size_type)
    }
    else {
      resolved.size_type = new std_msgs.msg.Int32()
    }

    if (msg.mode !== undefined) {
      resolved.mode = std_msgs.msg.Int32.Resolve(msg.mode)
    }
    else {
      resolved.mode = new std_msgs.msg.Int32()
    }

    if (msg.in_roi !== undefined) {
      resolved.in_roi = std_msgs.msg.Bool.Resolve(msg.in_roi)
    }
    else {
      resolved.in_roi = new std_msgs.msg.Bool()
    }

    if (msg.tracking_state !== undefined) {
      resolved.tracking_state = std_msgs.msg.Int32.Resolve(msg.tracking_state)
    }
    else {
      resolved.tracking_state = new std_msgs.msg.Int32()
    }

    if (msg.geo_center !== undefined) {
      resolved.geo_center = Point3f.Resolve(msg.geo_center)
    }
    else {
      resolved.geo_center = new Point3f()
    }

    if (msg.geo_size !== undefined) {
      resolved.geo_size = Point3f.Resolve(msg.geo_size)
    }
    else {
      resolved.geo_size = new Point3f()
    }

    if (msg.trajectory !== undefined) {
      resolved.trajectory = new Array(msg.trajectory.length);
      for (let i = 0; i < resolved.trajectory.length; ++i) {
        resolved.trajectory[i] = Point3f.Resolve(msg.trajectory[i]);
      }
    }
    else {
      resolved.trajectory = []
    }

    if (msg.history_velocity !== undefined) {
      resolved.history_velocity = new Array(msg.history_velocity.length);
      for (let i = 0; i < resolved.history_velocity.length; ++i) {
        resolved.history_velocity[i] = Point3f.Resolve(msg.history_velocity[i]);
      }
    }
    else {
      resolved.history_velocity = []
    }

    if (msg.history_type !== undefined) {
      resolved.history_type = new Array(msg.history_type.length);
      for (let i = 0; i < resolved.history_type.length; ++i) {
        resolved.history_type[i] = std_msgs.msg.Int32.Resolve(msg.history_type[i]);
      }
    }
    else {
      resolved.history_type = []
    }

    if (msg.gps_mode !== undefined) {
      resolved.gps_mode = std_msgs.msg.Int32.Resolve(msg.gps_mode)
    }
    else {
      resolved.gps_mode = new std_msgs.msg.Int32()
    }

    if (msg.gps_info !== undefined) {
      resolved.gps_info = Point3d.Resolve(msg.gps_info)
    }
    else {
      resolved.gps_info = new Point3d()
    }

    return resolved;
    }
};

module.exports = SupplementInfo;
