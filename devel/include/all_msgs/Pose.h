// Generated by gencpp from file all_msgs/Pose.msg
// DO NOT EDIT!


#ifndef ALL_MSGS_MESSAGE_POSE_H
#define ALL_MSGS_MESSAGE_POSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Float32.h>
#include <std_msgs/Float32.h>
#include <std_msgs/Float32.h>
#include <std_msgs/Float32.h>
#include <std_msgs/Float32.h>
#include <std_msgs/Float32.h>
#include <std_msgs/Int32.h>

namespace all_msgs
{
template <class ContainerAllocator>
struct Pose_
{
  typedef Pose_<ContainerAllocator> Type;

  Pose_()
    : x()
    , y()
    , z()
    , roll()
    , pitch()
    , yaw()
    , status()  {
    }
  Pose_(const ContainerAllocator& _alloc)
    : x(_alloc)
    , y(_alloc)
    , z(_alloc)
    , roll(_alloc)
    , pitch(_alloc)
    , yaw(_alloc)
    , status(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Float32_<ContainerAllocator>  _x_type;
  _x_type x;

   typedef  ::std_msgs::Float32_<ContainerAllocator>  _y_type;
  _y_type y;

   typedef  ::std_msgs::Float32_<ContainerAllocator>  _z_type;
  _z_type z;

   typedef  ::std_msgs::Float32_<ContainerAllocator>  _roll_type;
  _roll_type roll;

   typedef  ::std_msgs::Float32_<ContainerAllocator>  _pitch_type;
  _pitch_type pitch;

   typedef  ::std_msgs::Float32_<ContainerAllocator>  _yaw_type;
  _yaw_type yaw;

   typedef  ::std_msgs::Int32_<ContainerAllocator>  _status_type;
  _status_type status;





  typedef boost::shared_ptr< ::all_msgs::Pose_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::all_msgs::Pose_<ContainerAllocator> const> ConstPtr;

}; // struct Pose_

typedef ::all_msgs::Pose_<std::allocator<void> > Pose;

typedef boost::shared_ptr< ::all_msgs::Pose > PosePtr;
typedef boost::shared_ptr< ::all_msgs::Pose const> PoseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::all_msgs::Pose_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::all_msgs::Pose_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::all_msgs::Pose_<ContainerAllocator1> & lhs, const ::all_msgs::Pose_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.z == rhs.z &&
    lhs.roll == rhs.roll &&
    lhs.pitch == rhs.pitch &&
    lhs.yaw == rhs.yaw &&
    lhs.status == rhs.status;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::all_msgs::Pose_<ContainerAllocator1> & lhs, const ::all_msgs::Pose_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace all_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::all_msgs::Pose_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::all_msgs::Pose_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::all_msgs::Pose_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::all_msgs::Pose_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::all_msgs::Pose_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::all_msgs::Pose_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::all_msgs::Pose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "519b8f1b8da97c340862edf4f757de6c";
  }

  static const char* value(const ::all_msgs::Pose_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x519b8f1b8da97c34ULL;
  static const uint64_t static_value2 = 0x0862edf4f757de6cULL;
};

template<class ContainerAllocator>
struct DataType< ::all_msgs::Pose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "all_msgs/Pose";
  }

  static const char* value(const ::all_msgs::Pose_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::all_msgs::Pose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Float32 x \n"
"std_msgs/Float32 y \n"
"std_msgs/Float32 z \n"
"\n"
"std_msgs/Float32 roll \n"
"std_msgs/Float32 pitch\n"
"std_msgs/Float32 yaw\n"
"\n"
"std_msgs/Int32 status \n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Float32\n"
"float32 data\n"
"================================================================================\n"
"MSG: std_msgs/Int32\n"
"int32 data\n"
;
  }

  static const char* value(const ::all_msgs::Pose_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::all_msgs::Pose_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
      stream.next(m.roll);
      stream.next(m.pitch);
      stream.next(m.yaw);
      stream.next(m.status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Pose_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::all_msgs::Pose_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::all_msgs::Pose_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.z);
    s << indent << "roll: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.roll);
    s << indent << "pitch: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.pitch);
    s << indent << "yaw: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.yaw);
    s << indent << "status: ";
    s << std::endl;
    Printer< ::std_msgs::Int32_<ContainerAllocator> >::stream(s, indent + "  ", v.status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ALL_MSGS_MESSAGE_POSE_H
