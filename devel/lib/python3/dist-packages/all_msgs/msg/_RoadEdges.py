# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from all_msgs/RoadEdges.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import all_msgs.msg
import std_msgs.msg

class RoadEdges(genpy.Message):
  _md5sum = "5f84b2030d3a2bc9898f012cbd7a61c1"
  _type = "all_msgs/RoadEdges"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """RoadEdge[] curbs

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
"""
  __slots__ = ['curbs']
  _slot_types = ['all_msgs/RoadEdge[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       curbs

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(RoadEdges, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.curbs is None:
        self.curbs = []
    else:
      self.curbs = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      length = len(self.curbs)
      buff.write(_struct_I.pack(length))
      for val1 in self.curbs:
        _v1 = val1.roadedge_id
        _x = _v1.data
        buff.write(_get_struct_i().pack(_x))
        _v2 = val1.curve
        _v3 = _v2.x_start
        _x = _v3.data
        buff.write(_get_struct_f().pack(_x))
        _v4 = _v2.x_end
        _x = _v4.data
        buff.write(_get_struct_f().pack(_x))
        _v5 = _v2.a
        _x = _v5.data
        buff.write(_get_struct_f().pack(_x))
        _v6 = _v2.b
        _x = _v6.data
        buff.write(_get_struct_f().pack(_x))
        _v7 = _v2.c
        _x = _v7.data
        buff.write(_get_struct_f().pack(_x))
        _v8 = _v2.d
        _x = _v8.data
        buff.write(_get_struct_f().pack(_x))
        _v9 = val1.end_points
        _v10 = _v9.start
        _v11 = _v10.x
        _x = _v11.data
        buff.write(_get_struct_f().pack(_x))
        _v12 = _v10.y
        _x = _v12.data
        buff.write(_get_struct_f().pack(_x))
        _v13 = _v9.end
        _v14 = _v13.x
        _x = _v14.data
        buff.write(_get_struct_f().pack(_x))
        _v15 = _v13.y
        _x = _v15.data
        buff.write(_get_struct_f().pack(_x))
        _v16 = val1.measure_status
        _x = _v16.data
        buff.write(_get_struct_i().pack(_x))
        _v17 = val1.confidence
        _x = _v17.data
        buff.write(_get_struct_f().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.curbs is None:
        self.curbs = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.curbs = []
      for i in range(0, length):
        val1 = all_msgs.msg.RoadEdge()
        _v18 = val1.roadedge_id
        start = end
        end += 4
        (_v18.data,) = _get_struct_i().unpack(str[start:end])
        _v19 = val1.curve
        _v20 = _v19.x_start
        start = end
        end += 4
        (_v20.data,) = _get_struct_f().unpack(str[start:end])
        _v21 = _v19.x_end
        start = end
        end += 4
        (_v21.data,) = _get_struct_f().unpack(str[start:end])
        _v22 = _v19.a
        start = end
        end += 4
        (_v22.data,) = _get_struct_f().unpack(str[start:end])
        _v23 = _v19.b
        start = end
        end += 4
        (_v23.data,) = _get_struct_f().unpack(str[start:end])
        _v24 = _v19.c
        start = end
        end += 4
        (_v24.data,) = _get_struct_f().unpack(str[start:end])
        _v25 = _v19.d
        start = end
        end += 4
        (_v25.data,) = _get_struct_f().unpack(str[start:end])
        _v26 = val1.end_points
        _v27 = _v26.start
        _v28 = _v27.x
        start = end
        end += 4
        (_v28.data,) = _get_struct_f().unpack(str[start:end])
        _v29 = _v27.y
        start = end
        end += 4
        (_v29.data,) = _get_struct_f().unpack(str[start:end])
        _v30 = _v26.end
        _v31 = _v30.x
        start = end
        end += 4
        (_v31.data,) = _get_struct_f().unpack(str[start:end])
        _v32 = _v30.y
        start = end
        end += 4
        (_v32.data,) = _get_struct_f().unpack(str[start:end])
        _v33 = val1.measure_status
        start = end
        end += 4
        (_v33.data,) = _get_struct_i().unpack(str[start:end])
        _v34 = val1.confidence
        start = end
        end += 4
        (_v34.data,) = _get_struct_f().unpack(str[start:end])
        self.curbs.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      length = len(self.curbs)
      buff.write(_struct_I.pack(length))
      for val1 in self.curbs:
        _v35 = val1.roadedge_id
        _x = _v35.data
        buff.write(_get_struct_i().pack(_x))
        _v36 = val1.curve
        _v37 = _v36.x_start
        _x = _v37.data
        buff.write(_get_struct_f().pack(_x))
        _v38 = _v36.x_end
        _x = _v38.data
        buff.write(_get_struct_f().pack(_x))
        _v39 = _v36.a
        _x = _v39.data
        buff.write(_get_struct_f().pack(_x))
        _v40 = _v36.b
        _x = _v40.data
        buff.write(_get_struct_f().pack(_x))
        _v41 = _v36.c
        _x = _v41.data
        buff.write(_get_struct_f().pack(_x))
        _v42 = _v36.d
        _x = _v42.data
        buff.write(_get_struct_f().pack(_x))
        _v43 = val1.end_points
        _v44 = _v43.start
        _v45 = _v44.x
        _x = _v45.data
        buff.write(_get_struct_f().pack(_x))
        _v46 = _v44.y
        _x = _v46.data
        buff.write(_get_struct_f().pack(_x))
        _v47 = _v43.end
        _v48 = _v47.x
        _x = _v48.data
        buff.write(_get_struct_f().pack(_x))
        _v49 = _v47.y
        _x = _v49.data
        buff.write(_get_struct_f().pack(_x))
        _v50 = val1.measure_status
        _x = _v50.data
        buff.write(_get_struct_i().pack(_x))
        _v51 = val1.confidence
        _x = _v51.data
        buff.write(_get_struct_f().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.curbs is None:
        self.curbs = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.curbs = []
      for i in range(0, length):
        val1 = all_msgs.msg.RoadEdge()
        _v52 = val1.roadedge_id
        start = end
        end += 4
        (_v52.data,) = _get_struct_i().unpack(str[start:end])
        _v53 = val1.curve
        _v54 = _v53.x_start
        start = end
        end += 4
        (_v54.data,) = _get_struct_f().unpack(str[start:end])
        _v55 = _v53.x_end
        start = end
        end += 4
        (_v55.data,) = _get_struct_f().unpack(str[start:end])
        _v56 = _v53.a
        start = end
        end += 4
        (_v56.data,) = _get_struct_f().unpack(str[start:end])
        _v57 = _v53.b
        start = end
        end += 4
        (_v57.data,) = _get_struct_f().unpack(str[start:end])
        _v58 = _v53.c
        start = end
        end += 4
        (_v58.data,) = _get_struct_f().unpack(str[start:end])
        _v59 = _v53.d
        start = end
        end += 4
        (_v59.data,) = _get_struct_f().unpack(str[start:end])
        _v60 = val1.end_points
        _v61 = _v60.start
        _v62 = _v61.x
        start = end
        end += 4
        (_v62.data,) = _get_struct_f().unpack(str[start:end])
        _v63 = _v61.y
        start = end
        end += 4
        (_v63.data,) = _get_struct_f().unpack(str[start:end])
        _v64 = _v60.end
        _v65 = _v64.x
        start = end
        end += 4
        (_v65.data,) = _get_struct_f().unpack(str[start:end])
        _v66 = _v64.y
        start = end
        end += 4
        (_v66.data,) = _get_struct_f().unpack(str[start:end])
        _v67 = val1.measure_status
        start = end
        end += 4
        (_v67.data,) = _get_struct_i().unpack(str[start:end])
        _v68 = val1.confidence
        start = end
        end += 4
        (_v68.data,) = _get_struct_f().unpack(str[start:end])
        self.curbs.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_f = None
def _get_struct_f():
    global _struct_f
    if _struct_f is None:
        _struct_f = struct.Struct("<f")
    return _struct_f
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i
