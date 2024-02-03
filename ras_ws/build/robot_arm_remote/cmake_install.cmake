# Install script for directory: /home/alexoberco/ras_ws/src/robot_arm_remote

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/alexoberco/ras_ws/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_arm_remote/action" TYPE FILE FILES "/home/alexoberco/ras_ws/src/robot_arm_remote/action/RobotarmTask.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_arm_remote/msg" TYPE FILE FILES
    "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskAction.msg"
    "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionGoal.msg"
    "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionResult.msg"
    "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionFeedback.msg"
    "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskGoal.msg"
    "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskResult.msg"
    "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_arm_remote/cmake" TYPE FILE FILES "/home/alexoberco/ras_ws/build/robot_arm_remote/catkin_generated/installspace/robot_arm_remote-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/alexoberco/ras_ws/devel/include/robot_arm_remote")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/alexoberco/ras_ws/devel/share/roseus/ros/robot_arm_remote")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/alexoberco/ras_ws/devel/share/common-lisp/ros/robot_arm_remote")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/alexoberco/ras_ws/devel/share/gennodejs/ros/robot_arm_remote")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/alexoberco/ras_ws/devel/lib/python3/dist-packages/robot_arm_remote")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/alexoberco/ras_ws/devel/lib/python3/dist-packages/robot_arm_remote")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/alexoberco/ras_ws/build/robot_arm_remote/catkin_generated/installspace/robot_arm_remote.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_arm_remote/cmake" TYPE FILE FILES "/home/alexoberco/ras_ws/build/robot_arm_remote/catkin_generated/installspace/robot_arm_remote-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_arm_remote/cmake" TYPE FILE FILES
    "/home/alexoberco/ras_ws/build/robot_arm_remote/catkin_generated/installspace/robot_arm_remoteConfig.cmake"
    "/home/alexoberco/ras_ws/build/robot_arm_remote/catkin_generated/installspace/robot_arm_remoteConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_arm_remote" TYPE FILE FILES "/home/alexoberco/ras_ws/src/robot_arm_remote/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/robot_arm_remote" TYPE PROGRAM FILES "/home/alexoberco/ras_ws/build/robot_arm_remote/catkin_generated/installspace/alexa_interface.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/robot_arm_remote" TYPE PROGRAM FILES "/home/alexoberco/ras_ws/build/robot_arm_remote/catkin_generated/installspace/task_server.py")
endif()

