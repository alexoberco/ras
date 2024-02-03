// Generated by gencpp from file ras_service/AddTwoInts.msg
// DO NOT EDIT!


#ifndef RAS_SERVICE_MESSAGE_ADDTWOINTS_H
#define RAS_SERVICE_MESSAGE_ADDTWOINTS_H

#include <ros/service_traits.h>


#include <ras_service/AddTwoIntsRequest.h>
#include <ras_service/AddTwoIntsResponse.h>


namespace ras_service
{

struct AddTwoInts
{

typedef AddTwoIntsRequest Request;
typedef AddTwoIntsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct AddTwoInts
} // namespace ras_service


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ras_service::AddTwoInts > {
  static const char* value()
  {
    return "35e98de862a014b3b63dfc10ab785a0e";
  }

  static const char* value(const ::ras_service::AddTwoInts&) { return value(); }
};

template<>
struct DataType< ::ras_service::AddTwoInts > {
  static const char* value()
  {
    return "ras_service/AddTwoInts";
  }

  static const char* value(const ::ras_service::AddTwoInts&) { return value(); }
};


// service_traits::MD5Sum< ::ras_service::AddTwoIntsRequest> should match
// service_traits::MD5Sum< ::ras_service::AddTwoInts >
template<>
struct MD5Sum< ::ras_service::AddTwoIntsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::ras_service::AddTwoInts >::value();
  }
  static const char* value(const ::ras_service::AddTwoIntsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::ras_service::AddTwoIntsRequest> should match
// service_traits::DataType< ::ras_service::AddTwoInts >
template<>
struct DataType< ::ras_service::AddTwoIntsRequest>
{
  static const char* value()
  {
    return DataType< ::ras_service::AddTwoInts >::value();
  }
  static const char* value(const ::ras_service::AddTwoIntsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ras_service::AddTwoIntsResponse> should match
// service_traits::MD5Sum< ::ras_service::AddTwoInts >
template<>
struct MD5Sum< ::ras_service::AddTwoIntsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::ras_service::AddTwoInts >::value();
  }
  static const char* value(const ::ras_service::AddTwoIntsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::ras_service::AddTwoIntsResponse> should match
// service_traits::DataType< ::ras_service::AddTwoInts >
template<>
struct DataType< ::ras_service::AddTwoIntsResponse>
{
  static const char* value()
  {
    return DataType< ::ras_service::AddTwoInts >::value();
  }
  static const char* value(const ::ras_service::AddTwoIntsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // RAS_SERVICE_MESSAGE_ADDTWOINTS_H
