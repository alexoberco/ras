; Auto-generated. Do not edit!


(cl:in-package robot_arm_remote-msg)


;//! \htmlinclude RobotarmTaskResult.msg.html

(cl:defclass <RobotarmTaskResult> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RobotarmTaskResult (<RobotarmTaskResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotarmTaskResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotarmTaskResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_arm_remote-msg:<RobotarmTaskResult> is deprecated: use robot_arm_remote-msg:RobotarmTaskResult instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <RobotarmTaskResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_arm_remote-msg:success-val is deprecated.  Use robot_arm_remote-msg:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotarmTaskResult>) ostream)
  "Serializes a message object of type '<RobotarmTaskResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotarmTaskResult>) istream)
  "Deserializes a message object of type '<RobotarmTaskResult>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotarmTaskResult>)))
  "Returns string type for a message object of type '<RobotarmTaskResult>"
  "robot_arm_remote/RobotarmTaskResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotarmTaskResult)))
  "Returns string type for a message object of type 'RobotarmTaskResult"
  "robot_arm_remote/RobotarmTaskResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotarmTaskResult>)))
  "Returns md5sum for a message object of type '<RobotarmTaskResult>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotarmTaskResult)))
  "Returns md5sum for a message object of type 'RobotarmTaskResult"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotarmTaskResult>)))
  "Returns full string definition for message of type '<RobotarmTaskResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Result~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotarmTaskResult)))
  "Returns full string definition for message of type 'RobotarmTaskResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Result~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotarmTaskResult>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotarmTaskResult>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotarmTaskResult
    (cl:cons ':success (success msg))
))
