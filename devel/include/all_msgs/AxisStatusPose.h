// Generated by gencpp from file all_msgs/AxisStatusPose.msg
// DO NOT EDIT!


#ifndef ALL_MSGS_MESSAGE_AXISSTATUSPOSE_H
#define ALL_MSGS_MESSAGE_AXISSTATUSPOSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Int32.h>
#include <all_msgs/Pose.h>

namespace all_msgs
{
template <class ContainerAllocator>
struct AxisStatusPose_
{
  typedef AxisStatusPose_<ContainerAllocator> Type;

  AxisStatusPose_()
    : status()
    , pose()  {
    }
  AxisStatusPose_(const ContainerAllocator& _alloc)
    : status(_alloc)
    , pose(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Int32_<ContainerAllocator>  _status_type;
  _status_type status;

   typedef  ::all_msgs::Pose_<ContainerAllocator>  _pose_type;
  _pose_type pose;





  typedef boost::shared_ptr< ::all_msgs::AxisStatusPose_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::all_msgs::AxisStatusPose_<ContainerAllocator> const> ConstPtr;

}; // struct AxisStatusPose_

typedef ::all_msgs::AxisStatusPose_<std::allocator<void> > AxisStatusPose;

typedef boost::shared_ptr< ::all_msgs::AxisStatusPose > AxisStatusPosePtr;
typedef boost::shared_ptr< ::all_msgs::AxisStatusPose const> AxisStatusPoseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::all_msgs::AxisStatusPose_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::all_msgs::AxisStatusPose_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::all_msgs::AxisStatusPose_<ContainerAllocator1> & lhs, const ::all_msgs::AxisStatusPose_<ContainerAllocator2> & rhs)
{
  return lhs.status == rhs.status &&
    lhs.pose == rhs.pose;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::all_msgs::AxisStatusPose_<ContainerAllocator1> & lhs, const ::all_msgs::AxisStatusPose_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace all_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::all_msgs::AxisStatusPose_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::all_msgs::AxisStatusPose_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::all_msgs::AxisStatusPose_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::all_msgs::AxisStatusPose_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::all_msgs::AxisStatusPose_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::all_msgs::AxisStatusPose_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::all_msgs::AxisStatusPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1987389e84dad24c41bcd78726580d20";
  }

  static const char* value(const ::all_msgs::AxisStatusPose_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1987389e84dad24cULL;
  static const uint64_t static_value2 = 0x41bcd78726580d20ULL;
};

template<class ContainerAllocator>
struct DataType< ::all_msgs::AxisStatusPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "all_msgs/AxisStatusPose";
  }

  static const char* value(const ::all_msgs::AxisStatusPose_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::all_msgs::AxisStatusPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Int32 status \n"
"Pose           pose \n"
"================================================================================\n"
"MSG: std_msgs/Int32\n"
"int32 data\n"
"================================================================================\n"
"MSG: all_msgs/Pose\n"
"std_msgs/Float32 x \n"
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
;
  }

  static const char* value(const ::all_msgs::AxisStatusPose_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::all_msgs::AxisStatusPose_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status);
      stream.next(m.pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AxisStatusPose_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::all_msgs::AxisStatusPose_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::all_msgs::AxisStatusPose_<ContainerAllocator>& v)
  {
    s << indent << "status: ";
    s << std::endl;
    Printer< ::std_msgs::Int32_<ContainerAllocator> >::stream(s, indent + "  ", v.status);
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::all_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ALL_MSGS_MESSAGE_AXISSTATUSPOSE_H
