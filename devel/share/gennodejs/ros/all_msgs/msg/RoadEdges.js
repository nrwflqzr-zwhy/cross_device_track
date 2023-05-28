// Auto-generated. Do not edit!

// (in-package all_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RoadEdge = require('./RoadEdge.js');

//-----------------------------------------------------------

class RoadEdges {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.curbs = null;
    }
    else {
      if (initObj.hasOwnProperty('curbs')) {
        this.curbs = initObj.curbs
      }
      else {
        this.curbs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoadEdges
    // Serialize message field [curbs]
    // Serialize the length for message field [curbs]
    bufferOffset = _serializer.uint32(obj.curbs.length, buffer, bufferOffset);
    obj.curbs.forEach((val) => {
      bufferOffset = RoadEdge.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoadEdges
    let len;
    let data = new RoadEdges(null);
    // Deserialize message field [curbs]
    // Deserialize array length for message field [curbs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.curbs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.curbs[i] = RoadEdge.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 52 * object.curbs.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'all_msgs/RoadEdges';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5f84b2030d3a2bc9898f012cbd7a61c1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    RoadEdge[] curbs
    
    ================================================================================
    MSG: all_msgs/RoadEdge
    std_msgs/Int32   roadedge_id  
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
    const resolved = new RoadEdges(null);
    if (msg.curbs !== undefined) {
      resolved.curbs = new Array(msg.curbs.length);
      for (let i = 0; i < resolved.curbs.length; ++i) {
        resolved.curbs[i] = RoadEdge.Resolve(msg.curbs[i]);
      }
    }
    else {
      resolved.curbs = []
    }

    return resolved;
    }
};

module.exports = RoadEdges;
