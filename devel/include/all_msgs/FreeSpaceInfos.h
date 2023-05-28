// Generated by gencpp from file all_msgs/FreeSpaceInfos.msg
// DO NOT EDIT!


#ifndef ALL_MSGS_MESSAGE_FREESPACEINFOS_H
#define ALL_MSGS_MESSAGE_FREESPACEINFOS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <all_msgs/Point3f.h>
#include <std_msgs/Float32.h>

namespace all_msgs
{
template <class ContainerAllocator>
struct FreeSpaceInfos_
{
  typedef FreeSpaceInfos_<ContainerAllocator> Type;

  FreeSpaceInfos_()
    : fs_pts()
    , fs_confidence()  {
    }
  FreeSpaceInfos_(const ContainerAllocator& _alloc)
    : fs_pts(_alloc)
    , fs_confidence(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::all_msgs::Point3f_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::all_msgs::Point3f_<ContainerAllocator> >> _fs_pts_type;
  _fs_pts_type fs_pts;

   typedef std::vector< ::std_msgs::Float32_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::std_msgs::Float32_<ContainerAllocator> >> _fs_confidence_type;
  _fs_confidence_type fs_confidence;





  typedef boost::shared_ptr< ::all_msgs::FreeSpaceInfos_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::all_msgs::FreeSpaceInfos_<ContainerAllocator> const> ConstPtr;

}; // struct FreeSpaceInfos_

typedef ::all_msgs::FreeSpaceInfos_<std::allocator<void> > FreeSpaceInfos;

typedef boost::shared_ptr< ::all_msgs::FreeSpaceInfos > FreeSpaceInfosPtr;
typedef boost::shared_ptr< ::all_msgs::FreeSpaceInfos const> FreeSpaceInfosConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::all_msgs::FreeSpaceInfos_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::all_msgs::FreeSpaceInfos_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::all_msgs::FreeSpaceInfos_<ContainerAllocator1> & lhs, const ::all_msgs::FreeSpaceInfos_<ContainerAllocator2> & rhs)
{
  return lhs.fs_pts == rhs.fs_pts &&
    lhs.fs_confidence == rhs.fs_confidence;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::all_msgs::FreeSpaceInfos_<ContainerAllocator1> & lhs, const ::all_msgs::FreeSpaceInfos_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace all_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::all_msgs::FreeSpaceInfos_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::all_msgs::FreeSpaceInfos_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::all_msgs::FreeSpaceInfos_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::all_msgs::FreeSpaceInfos_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::all_msgs::FreeSpaceInfos_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::all_msgs::FreeSpaceInfos_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::all_msgs::FreeSpaceInfos_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a60987ee9bd368f8db4ac0adf7d909b0";
  }

  static const char* value(const ::all_msgs::FreeSpaceInfos_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa60987ee9bd368f8ULL;
  static const uint64_t static_value2 = 0xdb4ac0adf7d909b0ULL;
};

template<class ContainerAllocator>
struct DataType< ::all_msgs::FreeSpaceInfos_<ContainerAllocator> >
{
  static const char* value()
  {
    return "all_msgs/FreeSpaceInfos";
  }

  static const char* value(const ::all_msgs::FreeSpaceInfos_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::all_msgs::FreeSpaceInfos_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Point3f[]        fs_pts\n"
"std_msgs/Float32[] fs_confidence \n"
"\n"
"================================================================================\n"
"MSG: all_msgs/Point3f\n"
"std_msgs/Float32 x \n"
"std_msgs/Float32 y \n"
"std_msgs/Float32 z \n"
"================================================================================\n"
"MSG: std_msgs/Float32\n"
"float32 data\n"
;
  }

  static const char* value(const ::all_msgs::FreeSpaceInfos_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::all_msgs::FreeSpaceInfos_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.fs_pts);
      stream.next(m.fs_confidence);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FreeSpaceInfos_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::all_msgs::FreeSpaceInfos_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::all_msgs::FreeSpaceInfos_<ContainerAllocator>& v)
  {
    s << indent << "fs_pts[]" << std::endl;
    for (size_t i = 0; i < v.fs_pts.size(); ++i)
    {
      s << indent << "  fs_pts[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::all_msgs::Point3f_<ContainerAllocator> >::stream(s, indent + "    ", v.fs_pts[i]);
    }
    s << indent << "fs_confidence[]" << std::endl;
    for (size_t i = 0; i < v.fs_confidence.size(); ++i)
    {
      s << indent << "  fs_confidence[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "    ", v.fs_confidence[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ALL_MSGS_MESSAGE_FREESPACEINFOS_H
