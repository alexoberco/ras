#!/usr/bin/env python3
import rospy
import actionlib
from robot_arm_remote.msg import RobotarmTaskAction, RobotarmTaskResult
import sys
import moveit_commander


class Taskserver(object):
    result_= RobotarmTaskResult()
    arm_goal = []
    gripper_goal = []

    def __init__(self, name):
        self.action_name_ = name
        moveit_commander.roscpp_initialize(sys.argv)
        self.arm_move_group_ = moveit_commander.MoveGroupCommander("robot_arm")
        self.hand_move_group_ = moveit_commander.MoveGroupCommander("robot_arm_hand")
        self.as_ = actionlib.SimpleActionServer(self.action_name_,RobotarmTaskAction, execute_cb=self.execute_cb, auto_start=False)
        self.as_.start()

    def execute_cb(self, goal):
        success = True
        is_looping = goal.task_number


        try:

            if goal.task_number == 0:
                self.arm_goal = [0.0, 0.5, 0.4]
                self.gripper_goal = [-0.4, 0.4]
                
                self.arm_move_group_.set_joint_value_target(self.arm_goal)
                self.arm_move_group_.go(wait=True)
                self.arm_move_group_.stop()

                self.hand_move_group_.set_joint_value_target(self.gripper_goal)
                self.hand_move_group_.go(wait=True)
                self.hand_move_group_.stop()

            elif goal.task_number == 1:

                self.arm_goal = [-1.5, -0.5, -0.6]
                self.gripper_goal = [-1.4, 1.4]

                self.hand_move_group_.set_joint_value_target(self.gripper_goal)
                self.hand_move_group_.go(wait=True)
                self.hand_move_group_.stop()

                self.arm_move_group_.set_joint_value_target(self.arm_goal)
                self.arm_move_group_.go(wait=True)
                self.arm_move_group_.stop()

                self.arm_goal = [-1.5, -1, -0.5]

                self.arm_move_group_.set_joint_value_target(self.arm_goal)
                self.arm_move_group_.go(wait=True)
                self.arm_move_group_.stop()

                self.arm_goal = [0.0, 0.5, 0.3]
                self.gripper_goal = [-0.4, 0.4]

                self.hand_move_group_.set_joint_value_target(self.gripper_goal)
                self.hand_move_group_.go(wait=True)
                self.hand_move_group_.stop()

                self.arm_move_group_.set_joint_value_target(self.arm_goal)
                self.arm_move_group_.go(wait=True)
                self.arm_move_group_.stop()


            elif goal.task_number == 2:
                self.arm_goal = [-1.5, 0.0, -0.1]
                self.gripper_goal = [0.0, 0.0]

                self.arm_move_group_.set_joint_value_target(self.arm_goal)
                self.arm_move_group_.go(wait=True)
                self.arm_move_group_.stop()

                self.hand_move_group_.set_joint_value_target(self.gripper_goal)
                self.hand_move_group_.go(wait=True)
                self.hand_move_group_.stop()

            elif goal.task_number == 3:
                self.arm_goal = [1.5, -0.6, -0.7]
                self.gripper_goal = [-1.3, 1.3]

                self.arm_move_group_.set_joint_value_target(self.arm_goal)
                self.arm_move_group_.go(wait=True)
                self.arm_move_group_.stop()

                self.hand_move_group_.set_joint_value_target(self.gripper_goal)
                self.hand_move_group_.go(wait=True)
                self.hand_move_group_.stop()  
            elif goal.task_number == 4:
                while is_looping == 4:
                    self.arm_goal = [-1.5, -0.6, -0.7]
                    self.gripper_goal = [-1.4, 1.4]

                    self.hand_move_group_.set_joint_value_target(self.gripper_goal)
                    self.hand_move_group_.go(wait=True)
                    self.hand_move_group_.stop()

                    self.arm_move_group_.set_joint_value_target(self.arm_goal)
                    self.arm_move_group_.go(wait=True)
                    self.arm_move_group_.stop()

                    self.arm_goal = [-1.5, -1, -0.5]

                    self.arm_move_group_.set_joint_value_target(self.arm_goal)
                    self.arm_move_group_.go(wait=True)
                    self.arm_move_group_.stop()

                    self.arm_goal = [0.0, 0.5, 0.1]
                    self.gripper_goal = [-0.4, 0.4]

                    self.hand_move_group_.set_joint_value_target(self.gripper_goal)
                    self.hand_move_group_.go(wait=True)
                    self.hand_move_group_.stop()

                    self.arm_move_group_.set_joint_value_target(self.arm_goal)
                    self.arm_move_group_.go(wait=True)
                    self.arm_move_group_.stop()

                    self.arm_goal = [1.5, -0.6, -0.7]
                    self.gripper_goal = [-1.3, 1.3]

                    self.arm_move_group_.set_joint_value_target(self.arm_goal)
                    self.arm_move_group_.go(wait=True)
                    self.arm_move_group_.stop()

                    self.hand_move_group_.set_joint_value_target(self.gripper_goal)
                    self.hand_move_group_.go(wait=True)
                    self.hand_move_group_.stop()

                    self.arm_goal = [1.5, -0.2, -0.7]

                    self.arm_move_group_.set_joint_value_target(self.arm_goal)
                    self.arm_move_group_.go(wait=True)
                    self.arm_move_group_.stop()  
            else:
                rospy.logerr('invalid goal')
                return

        
            
        except moveit_commander.MoveItCommanderException as e:
            rospy.logerr("Error al mover: {}".format(e))
            success = False

        if self.as_.is_preempt_requested():
            rospy.loginfo('%s is preempted' % self.action_name_)
            self.as_.set_preempted()
            success = False

        if success:
            self.result_.success = True
            rospy.loginfo('%s succeeded' % self.action_name_)
            self.as_.set_succeeded(self.result_)




if __name__ == '__main__':
    rospy.init_node('task_server')
    server = Taskserver('task_server')
    rospy.spin()