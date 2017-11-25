cmake_minimum_required(VERSION 3.8)
project(chaos)

#SET(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake)

if("${CMAKE_SYSTEM_NAME}" MATCHES "Linux")
    SET(ROCMROOT /opt/rocm/opencl)
    SET(OpenCL_LIBRARY /opt/rocm/opencl/lib/x86_64)
    SET(OpenCL_INCLUDE_DIR /opt/rocm/opencl/include)
endif()

FIND_PACKAGE(OpenCL REQUIRED)
#INCLUDE_DIRECTORIES(${OPENCL_INCLUDE_DIR})

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES test.cpp)

add_executable(chaos ${SOURCE_FILES})

#TARGET_LINK_LIBRARIES(chaos ${OPENCL_LIBRARY})
target_link_libraries(chaos OpenCL::OpenCL)