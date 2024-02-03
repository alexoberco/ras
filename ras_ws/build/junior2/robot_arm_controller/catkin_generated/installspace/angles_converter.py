#!/usr/bin/env python3

import rospy
from robot_arm_controller.srv import AnglesConverter, AnglesConverterResponse
import math

def convert_radians_to_degrees(req):
    res = AnglesConverterResponse()
    res.base = int(((req.base + (math.pi/2))*180)/math.pi)
    res.shoulder = 180 - int(((req.shoulder + (math.pi/2))*180)/math.pi)
    res.elbow = int(((req.elbow + (math.pi/2))*180)/math.pi)
    res.gripper = int((-req.gripper *180)/(math.pi/2))
    return res

def convert_degrees_to_radians(req):
    res = AnglesConverterResponse()
    res.base = ((math.pi * req.base) - ((math.pi/2)*180))/180
    res.shoulder = (((180 - req.shoulder)*math.pi) - ((math.pi/2)*180))/180
    res.elbow = ((math.pi*req.elbow) - ((math.pi/2)*180))/180
    res.gripper = -((math.pi/2)*req.gripper)/180
    return res

def main(args=None):
    rospy.init_node('angles_converter')
    radians_to_degrees = rospy.Service('radians_to_degress', AnglesConverter, convert_radians_to_degrees)
    degrees_to_radians = rospy.Service('degrees_to_radians', AnglesConverter, convert_degrees_to_radians)

    rospy.spin()


if __name__ == '__main__':
    main()
