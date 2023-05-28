# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from all_msgs/EndPoints.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import all_msgs.msg
import std_msgs.msg

class EndPoints(genpy.Message):
  _md5sum = "8837e560fc11e0ded6ca2f9a297edb61"
  _type = "all_msgs/EndPoints"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """Point2f start 
Point2f end 

================================================================================
MSG: all_msgs/Point2f
std_msgs/Float32 x 
std_msgs/Float32 y 

================================================================================
MSG: std_msgs/Float32
float32 data"""
  __slots__ = ['start','end']
  _slot_types = ['all_msgs/Point2f','all_msgs/Point2f']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       start,end

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(EndPoints, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.start is None:
        self.start = all_msgs.msg.Point2f()
      if self.end is None:
        self.end = all_msgs.msg.Point2f()
    else:
      self.start = all_msgs.msg.Point2f()
      self.end = all_msgs.msg.Point2f()

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
      _x = self
      buff.write(_get_struct_4f().pack(_x.start.x.data, _x.start.y.data, _x.end.x.data, _x.end.y.data))
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
      if self.start is None:
        self.start = all_msgs.msg.Point2f()
      if self.end is None:
        self.end = all_msgs.msg.Point2f()
      end = 0
      _x = self
      start = end
      end += 16
      (_x.start.x.data, _x.start.y.data, _x.end.x.data, _x.end.y.data,) = _get_struct_4f().unpack(str[start:end])
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
      _x = self
      buff.write(_get_struct_4f().pack(_x.start.x.data, _x.start.y.data, _x.end.x.data, _x.end.y.data))
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
      if self.start is None:
        self.start = all_msgs.msg.Point2f()
      if self.end is None:
        self.end = all_msgs.msg.Point2f()
      end = 0
      _x = self
      start = end
      end += 16
      (_x.start.x.data, _x.start.y.data, _x.end.x.data, _x.end.y.data,) = _get_struct_4f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_4f = None
def _get_struct_4f():
    global _struct_4f
    if _struct_4f is None:
        _struct_4f = struct.Struct("<4f")
    return _struct_4f
