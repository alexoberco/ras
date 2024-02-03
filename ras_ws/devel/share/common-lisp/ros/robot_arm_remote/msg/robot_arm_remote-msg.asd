
(cl:in-package :asdf)

(defsystem "robot_arm_remote-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "RobotarmTaskAction" :depends-on ("_package_RobotarmTaskAction"))
    (:file "_package_RobotarmTaskAction" :depends-on ("_package"))
    (:file "RobotarmTaskActionFeedback" :depends-on ("_package_RobotarmTaskActionFeedback"))
    (:file "_package_RobotarmTaskActionFeedback" :depends-on ("_package"))
    (:file "RobotarmTaskActionGoal" :depends-on ("_package_RobotarmTaskActionGoal"))
    (:file "_package_RobotarmTaskActionGoal" :depends-on ("_package"))
    (:file "RobotarmTaskActionResult" :depends-on ("_package_RobotarmTaskActionResult"))
    (:file "_package_RobotarmTaskActionResult" :depends-on ("_package"))
    (:file "RobotarmTaskFeedback" :depends-on ("_package_RobotarmTaskFeedback"))
    (:file "_package_RobotarmTaskFeedback" :depends-on ("_package"))
    (:file "RobotarmTaskGoal" :depends-on ("_package_RobotarmTaskGoal"))
    (:file "_package_RobotarmTaskGoal" :depends-on ("_package"))
    (:file "RobotarmTaskResult" :depends-on ("_package_RobotarmTaskResult"))
    (:file "_package_RobotarmTaskResult" :depends-on ("_package"))
    (:file "robotarmTaskAction" :depends-on ("_package_robotarmTaskAction"))
    (:file "_package_robotarmTaskAction" :depends-on ("_package"))
    (:file "robotarmTaskActionFeedback" :depends-on ("_package_robotarmTaskActionFeedback"))
    (:file "_package_robotarmTaskActionFeedback" :depends-on ("_package"))
    (:file "robotarmTaskActionGoal" :depends-on ("_package_robotarmTaskActionGoal"))
    (:file "_package_robotarmTaskActionGoal" :depends-on ("_package"))
    (:file "robotarmTaskActionResult" :depends-on ("_package_robotarmTaskActionResult"))
    (:file "_package_robotarmTaskActionResult" :depends-on ("_package"))
    (:file "robotarmTaskFeedback" :depends-on ("_package_robotarmTaskFeedback"))
    (:file "_package_robotarmTaskFeedback" :depends-on ("_package"))
    (:file "robotarmTaskGoal" :depends-on ("_package_robotarmTaskGoal"))
    (:file "_package_robotarmTaskGoal" :depends-on ("_package"))
    (:file "robotarmTaskResult" :depends-on ("_package_robotarmTaskResult"))
    (:file "_package_robotarmTaskResult" :depends-on ("_package"))
  ))