; Auto-generated. Do not edit!


(cl:in-package robot_arm_remote-msg)


;//! \htmlinclude RobotarmTaskGoal.msg.html

(cl:defclass <RobotarmTaskGoal> (roslisp-msg-protocol:ros-message)
  ((task_number
    :reader task_number
    :initarg :task_number
    :type cl:integer
    :initform 0))
)

(cl:defclass RobotarmTaskGoal (<RobotarmTaskGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotarmTaskGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotarmTaskGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_arm_remote-msg:<RobotarmTaskGoal> is deprecated: use robot_arm_remote-msg:RobotarmTaskGoal instead.")))

(cl:ensure-generic-function 'task_number-val :lambda-list '(m))
(cl:defmethod task_number-val ((m <RobotarmTaskGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_arm_remote-msg:task_number-val is deprecated.  Use robot_arm_remote-msg:task_number instead.")
  (task_number m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotarmTaskGoal>) ostream)
  "Serializes a message object of type '<RobotarmTaskGoal>"
  (cl:let* ((signed (cl:slot-value msg 'task_number)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotarmTaskGoal>) istream)
  "Deserializes a message object of type '<RobotarmTaskGoal>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'task_number) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotarmTaskGoal>)))
  "Returns string type for a message object of type '<RobotarmTaskGoal>"
  "robot_arm_remote/RobotarmTaskGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotarmTaskGoal)))
  "Returns string type for a message object of type 'RobotarmTaskGoal"
  "robot_arm_remote/RobotarmTaskGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotarmTaskGoal>)))
  "Returns md5sum for a message object of type '<RobotarmTaskGoal>"
  "a44f0e3523e87134465bfb1a1ffe53cc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotarmTaskGoal)))
  "Returns md5sum for a message object of type 'RobotarmTaskGoal"
  "a44f0e3523e87134465bfb1a1ffe53cc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotarmTaskGoal>)))
  "Returns full string definition for message of type '<RobotarmTaskGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Goal~%int64 task_number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotarmTaskGoal)))
  "Returns full string definition for message of type 'RobotarmTaskGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Goal~%int64 task_number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotarmTaskGoal>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotarmTaskGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotarmTaskGoal
    (cl:cons ':task_number (task_number msg))
))
