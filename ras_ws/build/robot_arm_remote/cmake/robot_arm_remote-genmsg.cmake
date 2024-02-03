# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "robot_arm_remote: 7 messages, 0 services")

set(MSG_I_FLAGS "-Irobot_arm_remote:/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robot_arm_remote_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskAction.msg" NAME_WE)
add_custom_target(_robot_arm_remote_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_arm_remote" "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskAction.msg" "std_msgs/Header:robot_arm_remote/RobotarmTaskFeedback:robot_arm_remote/RobotarmTaskActionResult:actionlib_msgs/GoalID:robot_arm_remote/RobotarmTaskGoal:robot_arm_remote/RobotarmTaskActionFeedback:robot_arm_remote/RobotarmTaskActionGoal:robot_arm_remote/RobotarmTaskResult:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionGoal.msg" NAME_WE)
add_custom_target(_robot_arm_remote_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_arm_remote" "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionGoal.msg" "std_msgs/Header:actionlib_msgs/GoalID:robot_arm_remote/RobotarmTaskGoal"
)

get_filename_component(_filename "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionResult.msg" NAME_WE)
add_custom_target(_robot_arm_remote_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_arm_remote" "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionResult.msg" "std_msgs/Header:robot_arm_remote/RobotarmTaskResult:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionFeedback.msg" NAME_WE)
add_custom_target(_robot_arm_remote_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_arm_remote" "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionFeedback.msg" "robot_arm_remote/RobotarmTaskFeedback:std_msgs/Header:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskGoal.msg" NAME_WE)
add_custom_target(_robot_arm_remote_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_arm_remote" "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskGoal.msg" ""
)

get_filename_component(_filename "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskResult.msg" NAME_WE)
add_custom_target(_robot_arm_remote_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_arm_remote" "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskResult.msg" ""
)

get_filename_component(_filename "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskFeedback.msg" NAME_WE)
add_custom_target(_robot_arm_remote_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_arm_remote" "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskFeedback.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(robot_arm_remote
  "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskFeedback.msg;/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskGoal.msg;/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionFeedback.msg;/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionGoal.msg;/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_arm_remote
)
_generate_msg_cpp(robot_arm_remote
  "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_arm_remote
)
_generate_msg_cpp(robot_arm_remote
  "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_arm_remote
)
_generate_msg_cpp(robot_arm_remote
  "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_arm_remote
)
_generate_msg_cpp(robot_arm_remote
  "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_arm_remote
)
_generate_msg_cpp(robot_arm_remote
  "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_arm_remote
)
_generate_msg_cpp(robot_arm_remote
  "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_arm_remote
)

### Generating Services

### Generating Module File
_generate_module_cpp(robot_arm_remote
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_arm_remote
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robot_arm_remote_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robot_arm_remote_generate_messages robot_arm_remote_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskAction.msg" NAME_WE)
add_dependencies(robot_arm_remote_generate_messages_cpp _robot_arm_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionGoal.msg" NAME_WE)
add_dependencies(robot_arm_remote_generate_messages_cpp _robot_arm_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionResult.msg" NAME_WE)
add_dependencies(robot_arm_remote_generate_messages_cpp _robot_arm_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionFeedback.msg" NAME_WE)
add_dependencies(robot_arm_remote_generate_messages_cpp _robot_arm_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskGoal.msg" NAME_WE)
add_dependencies(robot_arm_remote_generate_messages_cpp _robot_arm_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskResult.msg" NAME_WE)
add_dependencies(robot_arm_remote_generate_messages_cpp _robot_arm_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskFeedback.msg" NAME_WE)
add_dependencies(robot_arm_remote_generate_messages_cpp _robot_arm_remote_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_arm_remote_gencpp)
add_dependencies(robot_arm_remote_gencpp robot_arm_remote_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_arm_remote_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(robot_arm_remote
  "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskFeedback.msg;/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskGoal.msg;/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionFeedback.msg;/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionGoal.msg;/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_arm_remote
)
_generate_msg_eus(robot_arm_remote
  "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_arm_remote
)
_generate_msg_eus(robot_arm_remote
  "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_arm_remote
)
_generate_msg_eus(robot_arm_remote
  "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_arm_remote
)
_generate_msg_eus(robot_arm_remote
  "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_arm_remote
)
_generate_msg_eus(robot_arm_remote
  "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_arm_remote
)
_generate_msg_eus(robot_arm_remote
  "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_arm_remote
)

### Generating Services

### Generating Module File
_generate_module_eus(robot_arm_remote
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_arm_remote
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(robot_arm_remote_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(robot_arm_remote_generate_messages robot_arm_remote_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskAction.msg" NAME_WE)
add_dependencies(robot_arm_remote_generate_messages_eus _robot_arm_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionGoal.msg" NAME_WE)
add_dependencies(robot_arm_remote_generate_messages_eus _robot_arm_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionResult.msg" NAME_WE)
add_dependencies(robot_arm_remote_generate_messages_eus _robot_arm_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionFeedback.msg" NAME_WE)
add_dependencies(robot_arm_remote_generate_messages_eus _robot_arm_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskGoal.msg" NAME_WE)
add_dependencies(robot_arm_remote_generate_messages_eus _robot_arm_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskResult.msg" NAME_WE)
add_dependencies(robot_arm_remote_generate_messages_eus _robot_arm_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskFeedback.msg" NAME_WE)
add_dependencies(robot_arm_remote_generate_messages_eus _robot_arm_remote_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_arm_remote_geneus)
add_dependencies(robot_arm_remote_geneus robot_arm_remote_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_arm_remote_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(robot_arm_remote
  "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskFeedback.msg;/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskGoal.msg;/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionFeedback.msg;/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionGoal.msg;/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_arm_remote
)
_generate_msg_lisp(robot_arm_remote
  "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_arm_remote
)
_generate_msg_lisp(robot_arm_remote
  "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_arm_remote
)
_generate_msg_lisp(robot_arm_remote
  "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_arm_remote
)
_generate_msg_lisp(robot_arm_remote
  "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_arm_remote
)
_generate_msg_lisp(robot_arm_remote
  "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_arm_remote
)
_generate_msg_lisp(robot_arm_remote
  "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_arm_remote
)

### Generating Services

### Generating Module File
_generate_module_lisp(robot_arm_remote
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_arm_remote
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robot_arm_remote_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robot_arm_remote_generate_messages robot_arm_remote_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskAction.msg" NAME_WE)
add_dependencies(robot_arm_remote_generate_messages_lisp _robot_arm_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionGoal.msg" NAME_WE)
add_dependencies(robot_arm_remote_generate_messages_lisp _robot_arm_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionResult.msg" NAME_WE)
add_dependencies(robot_arm_remote_generate_messages_lisp _robot_arm_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionFeedback.msg" NAME_WE)
add_dependencies(robot_arm_remote_generate_messages_lisp _robot_arm_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskGoal.msg" NAME_WE)
add_dependencies(robot_arm_remote_generate_messages_lisp _robot_arm_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskResult.msg" NAME_WE)
add_dependencies(robot_arm_remote_generate_messages_lisp _robot_arm_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskFeedback.msg" NAME_WE)
add_dependencies(robot_arm_remote_generate_messages_lisp _robot_arm_remote_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_arm_remote_genlisp)
add_dependencies(robot_arm_remote_genlisp robot_arm_remote_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_arm_remote_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(robot_arm_remote
  "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskFeedback.msg;/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskGoal.msg;/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionFeedback.msg;/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionGoal.msg;/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_arm_remote
)
_generate_msg_nodejs(robot_arm_remote
  "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_arm_remote
)
_generate_msg_nodejs(robot_arm_remote
  "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_arm_remote
)
_generate_msg_nodejs(robot_arm_remote
  "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_arm_remote
)
_generate_msg_nodejs(robot_arm_remote
  "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_arm_remote
)
_generate_msg_nodejs(robot_arm_remote
  "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_arm_remote
)
_generate_msg_nodejs(robot_arm_remote
  "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_arm_remote
)

### Generating Services

### Generating Module File
_generate_module_nodejs(robot_arm_remote
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_arm_remote
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(robot_arm_remote_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(robot_arm_remote_generate_messages robot_arm_remote_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskAction.msg" NAME_WE)
add_dependencies(robot_arm_remote_generate_messages_nodejs _robot_arm_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionGoal.msg" NAME_WE)
add_dependencies(robot_arm_remote_generate_messages_nodejs _robot_arm_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionResult.msg" NAME_WE)
add_dependencies(robot_arm_remote_generate_messages_nodejs _robot_arm_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionFeedback.msg" NAME_WE)
add_dependencies(robot_arm_remote_generate_messages_nodejs _robot_arm_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskGoal.msg" NAME_WE)
add_dependencies(robot_arm_remote_generate_messages_nodejs _robot_arm_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskResult.msg" NAME_WE)
add_dependencies(robot_arm_remote_generate_messages_nodejs _robot_arm_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskFeedback.msg" NAME_WE)
add_dependencies(robot_arm_remote_generate_messages_nodejs _robot_arm_remote_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_arm_remote_gennodejs)
add_dependencies(robot_arm_remote_gennodejs robot_arm_remote_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_arm_remote_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(robot_arm_remote
  "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskFeedback.msg;/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskGoal.msg;/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionFeedback.msg;/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionGoal.msg;/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_arm_remote
)
_generate_msg_py(robot_arm_remote
  "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_arm_remote
)
_generate_msg_py(robot_arm_remote
  "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_arm_remote
)
_generate_msg_py(robot_arm_remote
  "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_arm_remote
)
_generate_msg_py(robot_arm_remote
  "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_arm_remote
)
_generate_msg_py(robot_arm_remote
  "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_arm_remote
)
_generate_msg_py(robot_arm_remote
  "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_arm_remote
)

### Generating Services

### Generating Module File
_generate_module_py(robot_arm_remote
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_arm_remote
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robot_arm_remote_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robot_arm_remote_generate_messages robot_arm_remote_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskAction.msg" NAME_WE)
add_dependencies(robot_arm_remote_generate_messages_py _robot_arm_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionGoal.msg" NAME_WE)
add_dependencies(robot_arm_remote_generate_messages_py _robot_arm_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionResult.msg" NAME_WE)
add_dependencies(robot_arm_remote_generate_messages_py _robot_arm_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskActionFeedback.msg" NAME_WE)
add_dependencies(robot_arm_remote_generate_messages_py _robot_arm_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskGoal.msg" NAME_WE)
add_dependencies(robot_arm_remote_generate_messages_py _robot_arm_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskResult.msg" NAME_WE)
add_dependencies(robot_arm_remote_generate_messages_py _robot_arm_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexoberco/ras_ws/devel/share/robot_arm_remote/msg/RobotarmTaskFeedback.msg" NAME_WE)
add_dependencies(robot_arm_remote_generate_messages_py _robot_arm_remote_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_arm_remote_genpy)
add_dependencies(robot_arm_remote_genpy robot_arm_remote_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_arm_remote_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_arm_remote)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_arm_remote
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(robot_arm_remote_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(robot_arm_remote_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_arm_remote)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_arm_remote
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(robot_arm_remote_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(robot_arm_remote_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_arm_remote)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_arm_remote
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(robot_arm_remote_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(robot_arm_remote_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_arm_remote)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_arm_remote
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(robot_arm_remote_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(robot_arm_remote_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_arm_remote)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_arm_remote\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_arm_remote
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(robot_arm_remote_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(robot_arm_remote_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
