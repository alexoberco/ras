#!/usr/bin/env python3
from flask import Flask
from ask_sdk_core.skill_builder import SkillBuilder
from flask_ask_sdk.skill_adapter import SkillAdapter
from ask_sdk_core.dispatch_components import AbstractRequestHandler
from ask_sdk_core.utils import is_request_type, is_intent_name
from ask_sdk_core.handler_input import HandlerInput
from ask_sdk_model import Response
from ask_sdk_model.ui import SimpleCard
from ask_sdk_core.dispatch_components import AbstractExceptionHandler
import rospy
import actionlib
import threading
from robot_arm_remote.msg import RobotarmTaskAction, RobotarmTaskGoal

threading.Thread(target=lambda: rospy.init_node('alexa_interface', disable_signals=True)).start()
client= actionlib.SimpleActionClient('task_server', RobotarmTaskAction)

app = Flask(__name__)


class LaunchRequestHandler(AbstractRequestHandler):
    def can_handle(self, handler_input):
        # type: (HandlerInput) -> bool
        return is_request_type("LaunchRequest")(handler_input)

    def handle(self, handler_input):

        # type: (HandlerInput) -> Response
        speech_text = "Activating the robot arm"

        handler_input.response_builder.speak(speech_text).set_card(
            SimpleCard("Hello World", speech_text)).set_should_end_session(
            False)
        goal = RobotarmTaskGoal()
        goal.task_number = 0
        client.send_goal(goal)
        return handler_input.response_builder.response
    
    
class PickIntentHandler(AbstractRequestHandler):
    def can_handle(self, handler_input):
        # type: (HandlerInput) -> bool
        return is_intent_name("Pickintent")(handler_input)

    def handle(self, handler_input):

        # type: (HandlerInput) -> Response
        speech_text = "moving the arm"

        handler_input.response_builder.speak(speech_text).set_card(
            SimpleCard("Pick", speech_text)).set_should_end_session(
            True)
        goal = RobotarmTaskGoal()
        goal.task_number = 1
        client.send_goal(goal)
        return handler_input.response_builder.response

class SleepIntentHandler(AbstractRequestHandler):
    def can_handle(self, handler_input):
        # type: (HandlerInput) -> bool
        return is_intent_name("Sleepintent")(handler_input)

    def handle(self, handler_input):

        # type: (HandlerInput) -> Response
        speech_text = "am fucking tired, shut the fuck up"

        handler_input.response_builder.speak(speech_text).set_card(
            SimpleCard("Sleep", speech_text)).set_should_end_session(
            True)
        goal = RobotarmTaskGoal()
        goal.task_number = 2
        client.send_goal(goal)
        return handler_input.response_builder.response
    
class ReleaseIntentHandler(AbstractRequestHandler):

    def can_handle(self, handler_input):
        # type: (HandlerInput) -> bool
        return is_intent_name("Releaseintent")(handler_input)

    def handle(self, handler_input):

        # type: (HandlerInput) -> Response
        speech_text = "releasing this thing"

        handler_input.response_builder.speak(speech_text).set_card(
            SimpleCard("Release", speech_text)).set_should_end_session(
            True)
        goal = RobotarmTaskGoal()
        goal.task_number = 3
        client.send_goal(goal)
        return handler_input.response_builder.response
    
class LoopIntentHandler(AbstractRequestHandler):
    def can_handle(self, handler_input):
        # type: (HandlerInput) -> bool
        return is_intent_name("Loopintent")(handler_input)

    def handle(self, handler_input):

        
        # type: (HandlerInput) -> Response
        speech_text = "moving shi t "
        
        handler_input.response_builder.speak(speech_text).set_card(
            SimpleCard("Loop", speech_text)).set_should_end_session(
            True)   
    
        goal = RobotarmTaskGoal()
        goal.task_number = 4
        client.send_goal(goal)
        return handler_input.response_builder.response


class AllExceptionHandler(AbstractExceptionHandler):

    def can_handle(self, handler_input, exception):
        # type: (HandlerInput, Exception) -> bool
        return True

    def handle(self, handler_input, exception):
        
        # type: (HandlerInput, Exception) -> Response
        # Log the exception in CloudWatch Logs
        print(exception)

        speech = "what the fuck did you said?"
        handler_input.response_builder.speak(speech).ask(speech)
        return handler_input.response_builder.response

skill_builder = SkillBuilder()
skill_builder.add_request_handler(LaunchRequestHandler())
skill_builder.add_request_handler(PickIntentHandler())
skill_builder.add_request_handler(ReleaseIntentHandler())
skill_builder.add_request_handler(SleepIntentHandler())
skill_builder.add_request_handler(LoopIntentHandler())
skill_builder.add_exception_handler(AllExceptionHandler())
# Register your intent handlers to the skill_builder object

skill_adapter = SkillAdapter(
    skill=skill_builder.create(), skill_id="amzn1.ask.skill.c4820006-1693-4008-b933-349ed98a264e", app=app)

skill_adapter.register(app=app, route="/")


if __name__=='__main__':
    app.run()