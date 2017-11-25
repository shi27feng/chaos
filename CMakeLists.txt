cmake_minimum_required(VERSION 3.8)
project(chaos)

#if ( APPLE )
#    SET(OPENCL_LIBRARY /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.13.sdk/System/Library/Frameworks/OpenCL.framework/Versions/Current/Libraries)
#    SET(OPENCL_INCLUDE_DIR /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.13.sdk/System/Library/Frameworks/OpenCL.framework/Headers)
#elseif ( LINUX )
#    SET(ROCMROOT /opt/rocm/opencl)
#    SET(OPENCL_LIBRARY /opt/rocm/opencl/lib/x86_64)
#    SET(OPENCL_INCLUDE_DIR /opt/rocm/opencl/include)
#endif ()
#
#SET(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake)

FIND_PACKAGE(OpenCL REQUIRED)
#INCLUDE_DIRECTORIES(${OPENCL_INCLUDE_DIR})

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES test.cpp)

add_executable(chaos ${SOURCE_FILES})

#TARGET_LINK_LIBRARIES(chaos ${OPENCL_LIBRARY})
target_link_libraries(chaos OpenCL::OpenCL)