# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from all_msgs/SupplementInfo.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import all_msgs.msg
import std_msgs.msg

class SupplementInfo(genpy.Message):
  _md5sum = "f732019e3813a01320832404d7727553"
  _type = "all_msgs/SupplementInfo"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """std_msgs/UInt32     unique_id

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
float64 data"""
  __slots__ = ['unique_id','polygon','left_point_index','right_point_index','cloud_indices','latent_types','size_type','mode','in_roi','tracking_state','geo_center','geo_size','trajectory','history_velocity','history_type','gps_mode','gps_info']
  _slot_types = ['std_msgs/UInt32','all_msgs/Point3f[]','std_msgs/Int32','std_msgs/Int32','std_msgs/Int32[]','std_msgs/Float32[]','std_msgs/Int32','std_msgs/Int32','std_msgs/Bool','std_msgs/Int32','all_msgs/Point3f','all_msgs/Point3f','all_msgs/Point3f[]','all_msgs/Point3f[]','std_msgs/Int32[]','std_msgs/Int32','all_msgs/Point3d']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       unique_id,polygon,left_point_index,right_point_index,cloud_indices,latent_types,size_type,mode,in_roi,tracking_state,geo_center,geo_size,trajectory,history_velocity,history_type,gps_mode,gps_info

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SupplementInfo, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.unique_id is None:
        self.unique_id = std_msgs.msg.UInt32()
      if self.polygon is None:
        self.polygon = []
      if self.left_point_index is None:
        self.left_point_index = std_msgs.msg.Int32()
      if self.right_point_index is None:
        self.right_point_index = std_msgs.msg.Int32()
      if self.cloud_indices is None:
        self.cloud_indices = []
      if self.latent_types is None:
        self.latent_types = []
      if self.size_type is None:
        self.size_type = std_msgs.msg.Int32()
      if self.mode is None:
        self.mode = std_msgs.msg.Int32()
      if self.in_roi is None:
        self.in_roi = std_msgs.msg.Bool()
      if self.tracking_state is None:
        self.tracking_state = std_msgs.msg.Int32()
      if self.geo_center is None:
        self.geo_center = all_msgs.msg.Point3f()
      if self.geo_size is None:
        self.geo_size = all_msgs.msg.Point3f()
      if self.trajectory is None:
        self.trajectory = []
      if self.history_velocity is None:
        self.history_velocity = []
      if self.history_type is None:
        self.history_type = []
      if self.gps_mode is None:
        self.gps_mode = std_msgs.msg.Int32()
      if self.gps_info is None:
        self.gps_info = all_msgs.msg.Point3d()
    else:
      self.unique_id = std_msgs.msg.UInt32()
      self.polygon = []
      self.left_point_index = std_msgs.msg.Int32()
      self.right_point_index = std_msgs.msg.Int32()
      self.cloud_indices = []
      self.latent_types = []
      self.size_type = std_msgs.msg.Int32()
      self.mode = std_msgs.msg.Int32()
      self.in_roi = std_msgs.msg.Bool()
      self.tracking_state = std_msgs.msg.Int32()
      self.geo_center = all_msgs.msg.Point3f()
      self.geo_size = all_msgs.msg.Point3f()
      self.trajectory = []
      self.history_velocity = []
      self.history_type = []
      self.gps_mode = std_msgs.msg.Int32()
      self.gps_info = all_msgs.msg.Point3d()

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
      _x = self.unique_id.data
      buff.write(_get_struct_I().pack(_x))
      length = len(self.polygon)
      buff.write(_struct_I.pack(length))
      for val1 in self.polygon:
        _v1 = val1.x
        _x = _v1.data
        buff.write(_get_struct_f().pack(_x))
        _v2 = val1.y
        _x = _v2.data
        buff.write(_get_struct_f().pack(_x))
        _v3 = val1.z
        _x = _v3.data
        buff.write(_get_struct_f().pack(_x))
      _x = self
      buff.write(_get_struct_2i().pack(_x.left_point_index.data, _x.right_point_index.data))
      length = len(self.cloud_indices)
      buff.write(_struct_I.pack(length))
      for val1 in self.cloud_indices:
        _x = val1.data
        buff.write(_get_struct_i().pack(_x))
      length = len(self.latent_types)
      buff.write(_struct_I.pack(length))
      for val1 in self.latent_types:
        _x = val1.data
        buff.write(_get_struct_f().pack(_x))
      _x = self
      buff.write(_get_struct_2iBi6f().pack(_x.size_type.data, _x.mode.data, _x.in_roi.data, _x.tracking_state.data, _x.geo_center.x.data, _x.geo_center.y.data, _x.geo_center.z.data, _x.geo_size.x.data, _x.geo_size.y.data, _x.geo_size.z.data))
      length = len(self.trajectory)
      buff.write(_struct_I.pack(length))
      for val1 in self.trajectory:
        _v4 = val1.x
        _x = _v4.data
        buff.write(_get_struct_f().pack(_x))
        _v5 = val1.y
        _x = _v5.data
        buff.write(_get_struct_f().pack(_x))
        _v6 = val1.z
        _x = _v6.data
        buff.write(_get_struct_f().pack(_x))
      length = len(self.history_velocity)
      buff.write(_struct_I.pack(length))
      for val1 in self.history_velocity:
        _v7 = val1.x
        _x = _v7.data
        buff.write(_get_struct_f().pack(_x))
        _v8 = val1.y
        _x = _v8.data
        buff.write(_get_struct_f().pack(_x))
        _v9 = val1.z
        _x = _v9.data
        buff.write(_get_struct_f().pack(_x))
      length = len(self.history_type)
      buff.write(_struct_I.pack(length))
      for val1 in self.history_type:
        _x = val1.data
        buff.write(_get_struct_i().pack(_x))
      _x = self
      buff.write(_get_struct_i3d().pack(_x.gps_mode.data, _x.gps_info.x.data, _x.gps_info.y.data, _x.gps_info.z.data))
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
      if self.unique_id is None:
        self.unique_id = std_msgs.msg.UInt32()
      if self.polygon is None:
        self.polygon = None
      if self.left_point_index is None:
        self.left_point_index = std_msgs.msg.Int32()
      if self.right_point_index is None:
        self.right_point_index = std_msgs.msg.Int32()
      if self.cloud_indices is None:
        self.cloud_indices = None
      if self.latent_types is None:
        self.latent_types = None
      if self.size_type is None:
        self.size_type = std_msgs.msg.Int32()
      if self.mode is None:
        self.mode = std_msgs.msg.Int32()
      if self.in_roi is None:
        self.in_roi = std_msgs.msg.Bool()
      if self.tracking_state is None:
        self.tracking_state = std_msgs.msg.Int32()
      if self.geo_center is None:
        self.geo_center = all_msgs.msg.Point3f()
      if self.geo_size is None:
        self.geo_size = all_msgs.msg.Point3f()
      if self.trajectory is None:
        self.trajectory = None
      if self.history_velocity is None:
        self.history_velocity = None
      if self.history_type is None:
        self.history_type = None
      if self.gps_mode is None:
        self.gps_mode = std_msgs.msg.Int32()
      if self.gps_info is None:
        self.gps_info = all_msgs.msg.Point3d()
      end = 0
      start = end
      end += 4
      (self.unique_id.data,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.polygon = []
      for i in range(0, length):
        val1 = all_msgs.msg.Point3f()
        _v10 = val1.x
        start = end
        end += 4
        (_v10.data,) = _get_struct_f().unpack(str[start:end])
        _v11 = val1.y
        start = end
        end += 4
        (_v11.data,) = _get_struct_f().unpack(str[start:end])
        _v12 = val1.z
        start = end
        end += 4
        (_v12.data,) = _get_struct_f().unpack(str[start:end])
        self.polygon.append(val1)
      _x = self
      start = end
      end += 8
      (_x.left_point_index.data, _x.right_point_index.data,) = _get_struct_2i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.cloud_indices = []
      for i in range(0, length):
        val1 = std_msgs.msg.Int32()
        start = end
        end += 4
        (val1.data,) = _get_struct_i().unpack(str[start:end])
        self.cloud_indices.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.latent_types = []
      for i in range(0, length):
        val1 = std_msgs.msg.Float32()
        start = end
        end += 4
        (val1.data,) = _get_struct_f().unpack(str[start:end])
        self.latent_types.append(val1)
      _x = self
      start = end
      end += 37
      (_x.size_type.data, _x.mode.data, _x.in_roi.data, _x.tracking_state.data, _x.geo_center.x.data, _x.geo_center.y.data, _x.geo_center.z.data, _x.geo_size.x.data, _x.geo_size.y.data, _x.geo_size.z.data,) = _get_struct_2iBi6f().unpack(str[start:end])
      self.in_roi.data = bool(self.in_roi.data)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.trajectory = []
      for i in range(0, length):
        val1 = all_msgs.msg.Point3f()
        _v13 = val1.x
        start = end
        end += 4
        (_v13.data,) = _get_struct_f().unpack(str[start:end])
        _v14 = val1.y
        start = end
        end += 4
        (_v14.data,) = _get_struct_f().unpack(str[start:end])
        _v15 = val1.z
        start = end
        end += 4
        (_v15.data,) = _get_struct_f().unpack(str[start:end])
        self.trajectory.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.history_velocity = []
      for i in range(0, length):
        val1 = all_msgs.msg.Point3f()
        _v16 = val1.x
        start = end
        end += 4
        (_v16.data,) = _get_struct_f().unpack(str[start:end])
        _v17 = val1.y
        start = end
        end += 4
        (_v17.data,) = _get_struct_f().unpack(str[start:end])
        _v18 = val1.z
        start = end
        end += 4
        (_v18.data,) = _get_struct_f().unpack(str[start:end])
        self.history_velocity.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.history_type = []
      for i in range(0, length):
        val1 = std_msgs.msg.Int32()
        start = end
        end += 4
        (val1.data,) = _get_struct_i().unpack(str[start:end])
        self.history_type.append(val1)
      _x = self
      start = end
      end += 28
      (_x.gps_mode.data, _x.gps_info.x.data, _x.gps_info.y.data, _x.gps_info.z.data,) = _get_struct_i3d().unpack(str[start:end])
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
      _x = self.unique_id.data
      buff.write(_get_struct_I().pack(_x))
      length = len(self.polygon)
      buff.write(_struct_I.pack(length))
      for val1 in self.polygon:
        _v19 = val1.x
        _x = _v19.data
        buff.write(_get_struct_f().pack(_x))
        _v20 = val1.y
        _x = _v20.data
        buff.write(_get_struct_f().pack(_x))
        _v21 = val1.z
        _x = _v21.data
        buff.write(_get_struct_f().pack(_x))
      _x = self
      buff.write(_get_struct_2i().pack(_x.left_point_index.data, _x.right_point_index.data))
      length = len(self.cloud_indices)
      buff.write(_struct_I.pack(length))
      for val1 in self.cloud_indices:
        _x = val1.data
        buff.write(_get_struct_i().pack(_x))
      length = len(self.latent_types)
      buff.write(_struct_I.pack(length))
      for val1 in self.latent_types:
        _x = val1.data
        buff.write(_get_struct_f().pack(_x))
      _x = self
      buff.write(_get_struct_2iBi6f().pack(_x.size_type.data, _x.mode.data, _x.in_roi.data, _x.tracking_state.data, _x.geo_center.x.data, _x.geo_center.y.data, _x.geo_center.z.data, _x.geo_size.x.data, _x.geo_size.y.data, _x.geo_size.z.data))
      length = len(self.trajectory)
      buff.write(_struct_I.pack(length))
      for val1 in self.trajectory:
        _v22 = val1.x
        _x = _v22.data
        buff.write(_get_struct_f().pack(_x))
        _v23 = val1.y
        _x = _v23.data
        buff.write(_get_struct_f().pack(_x))
        _v24 = val1.z
        _x = _v24.data
        buff.write(_get_struct_f().pack(_x))
      length = len(self.history_velocity)
      buff.write(_struct_I.pack(length))
      for val1 in self.history_velocity:
        _v25 = val1.x
        _x = _v25.data
        buff.write(_get_struct_f().pack(_x))
        _v26 = val1.y
        _x = _v26.data
        buff.write(_get_struct_f().pack(_x))
        _v27 = val1.z
        _x = _v27.data
        buff.write(_get_struct_f().pack(_x))
      length = len(self.history_type)
      buff.write(_struct_I.pack(length))
      for val1 in self.history_type:
        _x = val1.data
        buff.write(_get_struct_i().pack(_x))
      _x = self
      buff.write(_get_struct_i3d().pack(_x.gps_mode.data, _x.gps_info.x.data, _x.gps_info.y.data, _x.gps_info.z.data))
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
      if self.unique_id is None:
        self.unique_id = std_msgs.msg.UInt32()
      if self.polygon is None:
        self.polygon = None
      if self.left_point_index is None:
        self.left_point_index = std_msgs.msg.Int32()
      if self.right_point_index is None:
        self.right_point_index = std_msgs.msg.Int32()
      if self.cloud_indices is None:
        self.cloud_indices = None
      if self.latent_types is None:
        self.latent_types = None
      if self.size_type is None:
        self.size_type = std_msgs.msg.Int32()
      if self.mode is None:
        self.mode = std_msgs.msg.Int32()
      if self.in_roi is None:
        self.in_roi = std_msgs.msg.Bool()
      if self.tracking_state is None:
        self.tracking_state = std_msgs.msg.Int32()
      if self.geo_center is None:
        self.geo_center = all_msgs.msg.Point3f()
      if self.geo_size is None:
        self.geo_size = all_msgs.msg.Point3f()
      if self.trajectory is None:
        self.trajectory = None
      if self.history_velocity is None:
        self.history_velocity = None
      if self.history_type is None:
        self.history_type = None
      if self.gps_mode is None:
        self.gps_mode = std_msgs.msg.Int32()
      if self.gps_info is None:
        self.gps_info = all_msgs.msg.Point3d()
      end = 0
      start = end
      end += 4
      (self.unique_id.data,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.polygon = []
      for i in range(0, length):
        val1 = all_msgs.msg.Point3f()
        _v28 = val1.x
        start = end
        end += 4
        (_v28.data,) = _get_struct_f().unpack(str[start:end])
        _v29 = val1.y
        start = end
        end += 4
        (_v29.data,) = _get_struct_f().unpack(str[start:end])
        _v30 = val1.z
        start = end
        end += 4
        (_v30.data,) = _get_struct_f().unpack(str[start:end])
        self.polygon.append(val1)
      _x = self
      start = end
      end += 8
      (_x.left_point_index.data, _x.right_point_index.data,) = _get_struct_2i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.cloud_indices = []
      for i in range(0, length):
        val1 = std_msgs.msg.Int32()
        start = end
        end += 4
        (val1.data,) = _get_struct_i().unpack(str[start:end])
        self.cloud_indices.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.latent_types = []
      for i in range(0, length):
        val1 = std_msgs.msg.Float32()
        start = end
        end += 4
        (val1.data,) = _get_struct_f().unpack(str[start:end])
        self.latent_types.append(val1)
      _x = self
      start = end
      end += 37
      (_x.size_type.data, _x.mode.data, _x.in_roi.data, _x.tracking_state.data, _x.geo_center.x.data, _x.geo_center.y.data, _x.geo_center.z.data, _x.geo_size.x.data, _x.geo_size.y.data, _x.geo_size.z.data,) = _get_struct_2iBi6f().unpack(str[start:end])
      self.in_roi.data = bool(self.in_roi.data)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.trajectory = []
      for i in range(0, length):
        val1 = all_msgs.msg.Point3f()
        _v31 = val1.x
        start = end
        end += 4
        (_v31.data,) = _get_struct_f().unpack(str[start:end])
        _v32 = val1.y
        start = end
        end += 4
        (_v32.data,) = _get_struct_f().unpack(str[start:end])
        _v33 = val1.z
        start = end
        end += 4
        (_v33.data,) = _get_struct_f().unpack(str[start:end])
        self.trajectory.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.history_velocity = []
      for i in range(0, length):
        val1 = all_msgs.msg.Point3f()
        _v34 = val1.x
        start = end
        end += 4
        (_v34.data,) = _get_struct_f().unpack(str[start:end])
        _v35 = val1.y
        start = end
        end += 4
        (_v35.data,) = _get_struct_f().unpack(str[start:end])
        _v36 = val1.z
        start = end
        end += 4
        (_v36.data,) = _get_struct_f().unpack(str[start:end])
        self.history_velocity.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.history_type = []
      for i in range(0, length):
        val1 = std_msgs.msg.Int32()
        start = end
        end += 4
        (val1.data,) = _get_struct_i().unpack(str[start:end])
        self.history_type.append(val1)
      _x = self
      start = end
      end += 28
      (_x.gps_mode.data, _x.gps_info.x.data, _x.gps_info.y.data, _x.gps_info.z.data,) = _get_struct_i3d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2i = None
def _get_struct_2i():
    global _struct_2i
    if _struct_2i is None:
        _struct_2i = struct.Struct("<2i")
    return _struct_2i
_struct_2iBi6f = None
def _get_struct_2iBi6f():
    global _struct_2iBi6f
    if _struct_2iBi6f is None:
        _struct_2iBi6f = struct.Struct("<2iBi6f")
    return _struct_2iBi6f
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
_struct_i3d = None
def _get_struct_i3d():
    global _struct_i3d
    if _struct_i3d is None:
        _struct_i3d = struct.Struct("<i3d")
    return _struct_i3d
