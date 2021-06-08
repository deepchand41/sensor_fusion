# Install script for directory: /home/robotlab/Documents/sensor_fusion/sensor_fusion/src/robotModels/base/base_rover

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/robotlab/Documents/sensor_fusion/sensor_fusion/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/robotlab/Documents/sensor_fusion/sensor_fusion/build/robotModels/base/base_rover/catkin_generated/installspace/base_rover.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/base_rover/cmake" TYPE FILE FILES
    "/home/robotlab/Documents/sensor_fusion/sensor_fusion/build/robotModels/base/base_rover/catkin_generated/installspace/base_roverConfig.cmake"
    "/home/robotlab/Documents/sensor_fusion/sensor_fusion/build/robotModels/base/base_rover/catkin_generated/installspace/base_roverConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/base_rover" TYPE FILE FILES "/home/robotlab/Documents/sensor_fusion/sensor_fusion/src/robotModels/base/base_rover/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/base_rover/config" TYPE DIRECTORY FILES "/home/robotlab/Documents/sensor_fusion/sensor_fusion/src/robotModels/base/base_rover/config/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/base_rover/launch" TYPE DIRECTORY FILES "/home/robotlab/Documents/sensor_fusion/sensor_fusion/src/robotModels/base/base_rover/launch/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/base_rover/meshes" TYPE DIRECTORY FILES "/home/robotlab/Documents/sensor_fusion/sensor_fusion/src/robotModels/base/base_rover/meshes/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/base_rover/urdf" TYPE DIRECTORY FILES "/home/robotlab/Documents/sensor_fusion/sensor_fusion/src/robotModels/base/base_rover/urdf/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/base_rover/models" TYPE DIRECTORY FILES "/home/robotlab/Documents/sensor_fusion/sensor_fusion/src/robotModels/base/base_rover/models/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/robotlab/Documents/sensor_fusion/sensor_fusion/build/robotModels/base/base_rover/catkin_generated/installspace/base_rover.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/base_rover/cmake" TYPE FILE FILES
    "/home/robotlab/Documents/sensor_fusion/sensor_fusion/build/robotModels/base/base_rover/catkin_generated/installspace/base_roverConfig.cmake"
    "/home/robotlab/Documents/sensor_fusion/sensor_fusion/build/robotModels/base/base_rover/catkin_generated/installspace/base_roverConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/base_rover" TYPE FILE FILES "/home/robotlab/Documents/sensor_fusion/sensor_fusion/src/robotModels/base/base_rover/package.xml")
endif()

