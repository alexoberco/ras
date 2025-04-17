## Overview
This repository provides a ROS 1 Noetic Catkin workspace (`ras_ws`) containing all packages and configurations necessary to run and simulate an Alexa‑controlled robot arm project using RViz and Gazebo. The Alexa integration nodes accept voice commands and translate them into ROS action goals.

## Prerequisites
- **Operating System:** Ubuntu 20.04 (tested)  
- **ROS Distribution:** ROS Noetic Ninjemys  
- **Required ROS Packages:**  
  - ros-noetic-robot-state-publisher  
  - ros-noetic-joint-state-publisher-gtk  
  - ros-noetic-rviz  
  - ros-noetic-gazebo-ros  
  - ros-noetic-xacro  
  - ros-noetic-ros-control & ros-noetic-ros-controllers

## Installation
```bash
# Clone the workspace
git clone https://github.com/alexoberco/robotArm_workspace.git  
cd robotArm_workspace/ras_ws

# Build and source
catkin_make  
source devel/setup.bash

# Install missing dependencies
rosdep update  
rosdep install --from-paths src --ignore-src -r -y
```

## Workspace Structure
```
ras_ws/
├── .catkin_workspace
├── CMakeLists.txt
└── src/
    ├── robot_arm/                # URDF/XACRO, meshes, RViz & Gazebo launch files
    ├── robot_arm_bringup/        # Controllers & hardware interface bringup
    ├── robot_arm_controller/     # ros_control configs & plugins
    ├── robot_arm_remote/         # Alexa voice-control nodes
    ├── proyecto_moveit_config/   # MoveIt! planning configuration
    ├── moveit_interface/         # Python/C++ MoveIt! wrappers
    ├── proyecto/                 # High-level orchestration nodes
    └── scripts/                  # Utility scripts (e.g., TF broadcaster)
```

## Package Details
- **robot_arm/**  
  Contains the robot’s URDF/XACRO descriptions, mesh files, and RViz/Gazebo launch files for visualization and simulation.

- **robot_arm_bringup/**  
  Launch scripts to initialize the controller manager and hardware interfaces (real or simulated).

- **robot_arm_controller/**  
  PID gain settings, joint limit configurations, and plugin definitions for ros_control.

- **robot_arm_remote/**  
  Nodes integrating Alexa Skills with ROS topics, parsing voice commands into action goals.

- **proyecto_moveit_config/** & **moveit_interface/**  
  Complete MoveIt! setup for motion planning and execution, with demo launch files and API wrappers.

- **scripts/**  
  Utility scripts (e.g., `turtle_tf_broadcaster.py`) for quick testing of TF frames.

[![Ver video](https://img.youtube.com/vi/M-rtOfD9f-A/0.jpg)](https://youtube.com/shorts/M-rtOfD9f-A)

## Usage Examples
- **Visualize in RViz**  
  `roslaunch robot_arm display.launch`

- **Simulate in Gazebo**  
  `roslaunch robot_arm display_gazebo.launch paused:=true use_sim_time:=true`

- **Alexa Voice Control**  
  `roslaunch robot_arm_remote alexa_control.launch`

- **MoveIt! Planning Demo**  
  `roslaunch proyecto_moveit_config demo.launch`

## Contributing
Contributions, bug reports, and pull requests are welcome. Please fork the repository, create a feature branch, and submit a pull request against `main`.

## License
MIT License
