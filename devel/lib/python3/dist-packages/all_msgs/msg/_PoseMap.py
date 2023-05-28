# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from all_msgs/PoseMap.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import all_msgs.msg
import std_msgs.msg

class PoseMap(genpy.Message):
  _md5sum = "51fc7df0ce0cb8096f687175e8cb1f26"
  _type = "all_msgs/PoseMap"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """AxisStatusPose[] status_poses 

================================================================================
MSG: all_msgs/AxisStatusPose
std_msgs/Int32 status 
Pose           pose 
================================================================================
MSG: std_msgs/Int32
int32 data
================================================================================
MSG: all_msgs/Pose
std_msgs/Float32 x 
std_msgs/Float32 y 
std_msgs/Float32 z 

std_msgs/Float32 roll 
std_msgs/Float32 pitch
std_msgs/Float32 yaw

std_msgs/Int32 status 

================================================================================
MSG: std_msgs/Float32
float32 data"""
  __slots__ = ['status_poses']
  _slot_types = ['all_msgs/AxisStatusPose[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       status_poses

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(PoseMap, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.status_poses is None:
        self.status_poses = []
    else:
      self.status_poses = []

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
      length = len(self.status_poses)
      buff.write(_struct_I.pack(length))
      for val1 in self.status_poses:
        _v1 = val1.status
        _x = _v1.data
        buff.write(_get_struct_i().pack(_x))
        _v2 = val1.pose
        _v3 = _v2.x
        _x = _v3.data
        buff.write(_get_struct_f().pack(_x))
        _v4 = _v2.y
        _x = _v4.data
        buff.write(_get_struct_f().pack(_x))
        _v5 = _v2.z
        _x = _v5.data
        buff.write(_get_struct_f().pack(_x))
        _v6 = _v2.roll
        _x = _v6.data
        buff.write(_get_struct_f().pack(_x))
        _v7 = _v2.pitch
        _x = _v7.data
        buff.write(_get_struct_f().pack(_x))
        _v8 = _v2.yaw
        _x = _v8.data
        buff.write(_get_struct_f().pack(_x))
        _v9 = _v2.status
        _x = _v9.data
        buff.write(_get_struct_i().pack(_x))
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
      if self.status_poses is None:
        self.status_poses = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.status_poses = []
      for i in range(0, length):
        val1 = all_msgs.msg.AxisStatusPose()
        _v10 = val1.status
        start = end
        end += 4
        (_v10.data,) = _get_struct_i().unpack(str[start:end])
        _v11 = val1.pose
        _v12 = _v11.x
        start = end
        end += 4
        (_v12.data,) = _get_struct_f().unpack(str[start:end])
        _v13 = _v11.y
        start = end
        end += 4
        (_v13.data,) = _get_struct_f().unpack(str[start:end])
        _v14 = _v11.z
        start = end
        end += 4
        (_v14.data,) = _get_struct_f().unpack(str[start:end])
        _v15 = _v11.roll
        start = end
        end += 4
        (_v15.data,) = _get_struct_f().unpack(str[start:end])
        _v16 = _v11.pitch
        start = end
        end += 4
        (_v16.data,) = _get_struct_f().unpack(str[start:end])
        _v17 = _v11.yaw
        start = end
        end += 4
        (_v17.data,) = _get_struct_f().unpack(str[start:end])
        _v18 = _v11.status
        start = end
        end += 4
        (_v18.data,) = _get_struct_i().unpack(str[start:end])
        self.status_poses.append(val1)
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
      length = len(self.status_poses)
      buff.write(_struct_I.pack(length))
      for val1 in self.status_poses:
        _v19 = val1.status
        _x = _v19.data
        buff.write(_get_struct_i().pack(_x))
        _v20 = val1.pose
        _v21 = _v20.x
        _x = _v21.data
        buff.write(_get_struct_f().pack(_x))
        _v22 = _v20.y
        _x = _v22.data
        buff.write(_get_struct_f().pack(_x))
        _v23 = _v20.z
        _x = _v23.data
        buff.write(_get_struct_f().pack(_x))
        _v24 = _v20.roll
        _x = _v24.data
        buff.write(_get_struct_f().pack(_x))
        _v25 = _v20.pitch
        _x = _v25.data
        buff.write(_get_struct_f().pack(_x))
        _v26 = _v20.yaw
        _x = _v26.data
        buff.write(_get_struct_f().pack(_x))
        _v27 = _v20.status
        _x = _v27.data
        buff.write(_get_struct_i().pack(_x))
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
      if self.status_poses is None:
        self.status_poses = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.status_poses = []
      for i in range(0, length):
        val1 = all_msgs.msg.AxisStatusPose()
        _v28 = val1.status
        start = end
        end += 4
        (_v28.data,) = _get_struct_i().unpack(str[start:end])
        _v29 = val1.pose
        _v30 = _v29.x
        start = end
        end += 4
        (_v30.data,) = _get_struct_f().unpack(str[start:end])
        _v31 = _v29.y
        start = end
        end += 4
        (_v31.data,) = _get_struct_f().unpack(str[start:end])
        _v32 = _v29.z
        start = end
        end += 4
        (_v32.data,) = _get_struct_f().unpack(str[start:end])
        _v33 = _v29.roll
        start = end
        end += 4
        (_v33.data,) = _get_struct_f().unpack(str[start:end])
        _v34 = _v29.pitch
        start = end
        end += 4
        (_v34.data,) = _get_struct_f().unpack(str[start:end])
        _v35 = _v29.yaw
        start = end
        end += 4
        (_v35.data,) = _get_struct_f().unpack(str[start:end])
        _v36 = _v29.status
        start = end
        end += 4
        (_v36.data,) = _get_struct_i().unpack(str[start:end])
        self.status_poses.append(val1)
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