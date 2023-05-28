// Generated by gencpp from file all_msgs/Point2f.msg
// DO NOT EDIT!


#ifndef ALL_MSGS_MESSAGE_POINT2F_H
#define ALL_MSGS_MESSAGE_POINT2F_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Float32.h>
#include <std_msgs/Float32.h>

namespace all_msgs
{
template <class ContainerAllocator>
struct Point2f_
{
  typedef Point2f_<ContainerAllocator> Type;

  Point2f_()
    : x()
    , y()  {
    }
  Point2f_(const ContainerAllocator& _alloc)
    : x(_alloc)
    , y(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Float32_<ContainerAllocator>  _x_type;
  _x_type x;

   typedef  ::std_msgs::Float32_<ContainerAllocator>  _y_type;
  _y_type y;





  typedef boost::shared_ptr< ::all_msgs::Point2f_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::all_msgs::Point2f_<ContainerAllocator> const> ConstPtr;

}; // struct Point2f_

typedef ::all_msgs::Point2f_<std::allocator<void> > Point2f;

typedef boost::shared_ptr< ::all_msgs::Point2f > Point2fPtr;
typedef boost::shared_ptr< ::all_msgs::Point2f const> Point2fConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::all_msgs::Point2f_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::all_msgs::Point2f_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::all_msgs::Point2f_<ContainerAllocator1> & lhs, const ::all_msgs::Point2f_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::all_msgs::Point2f_<ContainerAllocator1> & lhs, const ::all_msgs::Point2f_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace all_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::all_msgs::Point2f_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::all_msgs::Point2f_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::all_msgs::Point2f_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::all_msgs::Point2f_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::all_msgs::Point2f_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::all_msgs::Point2f_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::all_msgs::Point2f_<ContainerAllocator> >
{
  static const char* value()
  {
    return "baababb5c5dd8e2ace650c8c021e6efe";
  }

  static const char* value(const ::all_msgs::Point2f_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbaababb5c5dd8e2aULL;
  static const uint64_t static_value2 = 0xce650c8c021e6efeULL;
};

template<class ContainerAllocator>
struct DataType< ::all_msgs::Point2f_<ContainerAllocator> >
{
  static const char* value()
  {
    return "all_msgs/Point2f";
  }

  static const char* value(const ::all_msgs::Point2f_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::all_msgs::Point2f_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Float32 x \n"
"std_msgs/Float32 y \n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Float32\n"
"float32 data\n"
;
  }

  static const char* value(const ::all_msgs::Point2f_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::all_msgs::Point2f_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Point2f_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::all_msgs::Point2f_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::all_msgs::Point2f_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.y);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ALL_MSGS_MESSAGE_POINT2F_H
