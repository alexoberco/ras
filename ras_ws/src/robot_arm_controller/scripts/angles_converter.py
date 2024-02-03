#!/usr/bin/env python3
import rospy
import math
from robot_arm_controller.srv import AnglesConverter, AnglesConverterResponse

"""
  arduinobot - angles_converter
  This script implements two services on the topics
    - radians_to_degrees
    - degrees_to_radians

  Both of them receives a request with the format:
    float64 base
    float64 shoulder
    float64 elbow 
    float64 gripper
  and sends a response in the same format to the client

  The first service (radians_to_degrees) receives the angles in radians and convert
  those in degrees according to the boundaries defined inthe URDF file

  The second service (degrees_to_radians) receives the angles in degrees and convert
  those in radians according to the boundaries defined inthe URDF file

  This conversion is needed for the control of the real robot in order to convert the radians angle of each joint
  as used in ROS in degrees angles as used in Arduino for the actuation of the Servo motors
  

  Copyright (c) 2021 Antonio Brandi.  All right reserved.
"""

# Rangos de movimiento en radianes para cada servo
base_range = (-1.40, 1.40)
shoulder_range = (-1.40, 1.40)
elbow_range = (-0.50, 0.50)
gripper_range = (-1.57, 0)



def convert_radians_to_degrees(req):
    res = AnglesConverterResponse()

    # Base: Mapeo de -1.40 a 1.40 radianes a 9.79 a 170.21 grados
    res.base = radians_to_servo_degrees(req.base)

    # Shoulder: Mapeo de -1.40 a 1.40 radianes a 9.79 a 170.21 grados
    res.shoulder = 180-radians_to_servo_degrees( req.shoulder)

    # Elbow: Mapeo de -0.50 a 0.50 radianes a 151.35 a 208.65 grados
    res.elbow = radians_to_servo_degrees( req.elbow)

    # Gripper: Mapeo de -1.40 a 0 radianes a 9.79 a 90.00 grados
    res.gripper = 180-radians_to_servo_degrees( req.gripper)

    return res


def convert_degrees_to_radians(req):
    # Function that is called every time the service radians_to_degrees is called
    # It receives the Request message as input with the angles in degrees
    # and returns the Result message as output with the angles in radians
    res = AnglesConverterResponse()
    res.base = ((math.pi*req.base) - ((math.pi/2)*180))/180
    res.shoulder = (((180-req.shoulder)*math.pi)-((math.pi/2)*180))/180
    res.elbow = ((math.pi*req.elbow) - ((math.pi/2)*180))/180
    res.gripper = -((math.pi/2)*req.gripper)/180
    return res

def radians_to_servo_degrees(radians):
    return (radians * 180 / math.pi) + 90



if __name__ == "__main__":
    # Inizialize a ROS node called angles_converter
    rospy.init_node('angles_converter')

    # Inizialize two services for the angle conversions 
    radians_to_degrees = rospy.Service('radians_to_degrees', AnglesConverter, convert_radians_to_degrees)
    degrees_to_radians = rospy.Service('degrees_to_radians', AnglesConverter, convert_degrees_to_radians)

    # keeps the node up and running
    rospy.spin()