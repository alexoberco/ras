cmake_minimum_required(VERSION 3.0.2)
project(robot_arm_controller)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  message_generation
  controller_manager
  hardware_interface
)

add_service_files(
  FILES
  AnglesConverter.srv
)

generate_messages(
  DEPENDENCIES
  std_msgs
)

catkin_package(
  INCLUDE_DIRS include
  CATKIN_DEPENDS
    controller_manager
    hardware_interface
)


include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)

 catkin_install_python(PROGRAMS
   scripts/angles_converter.py
   DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
 )

add_executable(robotarm_interface_node src/robot_arm_interface.cpp)
add_dependencies(robotarm_interface_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(robotarm_interface_node ${catkin_LIBRARIES})




