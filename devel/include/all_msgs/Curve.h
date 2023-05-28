// Generated by gencpp from file all_msgs/Curve.msg
// DO NOT EDIT!


#ifndef ALL_MSGS_MESSAGE_CURVE_H
#define ALL_MSGS_MESSAGE_CURVE_H


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

namespace all_msgs
{
template <class ContainerAllocator>
struct Curve_
{
  typedef Curve_<ContainerAllocator> Type;

  Curve_()
    : x_start()
    , x_end()
    , a()
    , b()
    , c()
    , d()  {
    }
  Curve_(const ContainerAllocator& _alloc)
    : x_start(_alloc)
    , x_end(_alloc)
    , a(_alloc)
    , b(_alloc)
    , c(_alloc)
    , d(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Float32_<ContainerAllocator>  _x_start_type;
  _x_start_type x_start;

   typedef  ::std_msgs::Float32_<ContainerAllocator>  _x_end_type;
  _x_end_type x_end;

   typedef  ::std_msgs::Float32_<ContainerAllocator>  _a_type;
  _a_type a;

   typedef  ::std_msgs::Float32_<ContainerAllocator>  _b_type;
  _b_type b;

   typedef  ::std_msgs::Float32_<ContainerAllocator>  _c_type;
  _c_type c;

   typedef  ::std_msgs::Float32_<ContainerAllocator>  _d_type;
  _d_type d;





  typedef boost::shared_ptr< ::all_msgs::Curve_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::all_msgs::Curve_<ContainerAllocator> const> ConstPtr;

}; // struct Curve_

typedef ::all_msgs::Curve_<std::allocator<void> > Curve;

typedef boost::shared_ptr< ::all_msgs::Curve > CurvePtr;
typedef boost::shared_ptr< ::all_msgs::Curve const> CurveConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::all_msgs::Curve_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::all_msgs::Curve_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::all_msgs::Curve_<ContainerAllocator1> & lhs, const ::all_msgs::Curve_<ContainerAllocator2> & rhs)
{
  return lhs.x_start == rhs.x_start &&
    lhs.x_end == rhs.x_end &&
    lhs.a == rhs.a &&
    lhs.b == rhs.b &&
    lhs.c == rhs.c &&
    lhs.d == rhs.d;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::all_msgs::Curve_<ContainerAllocator1> & lhs, const ::all_msgs::Curve_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace all_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::all_msgs::Curve_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::all_msgs::Curve_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::all_msgs::Curve_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::all_msgs::Curve_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::all_msgs::Curve_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::all_msgs::Curve_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::all_msgs::Curve_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9a544adf692f69bcc100499d862d09b5";
  }

  static const char* value(const ::all_msgs::Curve_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9a544adf692f69bcULL;
  static const uint64_t static_value2 = 0xc100499d862d09b5ULL;
};

template<class ContainerAllocator>
struct DataType< ::all_msgs::Curve_<ContainerAllocator> >
{
  static const char* value()
  {
    return "all_msgs/Curve";
  }

  static const char* value(const ::all_msgs::Curve_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::all_msgs::Curve_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Float32 x_start \n"
"std_msgs/Float32 x_end \n"
"std_msgs/Float32 a \n"
"std_msgs/Float32 b \n"
"std_msgs/Float32 c \n"
"std_msgs/Float32 d \n"
"================================================================================\n"
"MSG: std_msgs/Float32\n"
"float32 data\n"
;
  }

  static const char* value(const ::all_msgs::Curve_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::all_msgs::Curve_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x_start);
      stream.next(m.x_end);
      stream.next(m.a);
      stream.next(m.b);
      stream.next(m.c);
      stream.next(m.d);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Curve_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::all_msgs::Curve_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::all_msgs::Curve_<ContainerAllocator>& v)
  {
    s << indent << "x_start: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.x_start);
    s << indent << "x_end: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.x_end);
    s << indent << "a: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.a);
    s << indent << "b: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.b);
    s << indent << "c: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.c);
    s << indent << "d: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.d);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ALL_MSGS_MESSAGE_CURVE_H
