#!/usr/bin/env python3

import rospy
from ras_service.srv import AddTwoInts, AddTwoIntsResponse 

def add_two_ints(req):
    print("returning [%s + %s = %s]"%(req.a, req.b, (req.a + req.b)))
    return AddTwoIntsResponse(req.a + req.b)

def add_two_ints_server():
    rospy.init_node("add_two_ints_server")
    s = rospy.Service("addtwoints",AddTwoInts,add_two_ints)
    print("Ready for a server")
    rospy.spin()

if __name__=="__main__":
    add_two_ints_server()