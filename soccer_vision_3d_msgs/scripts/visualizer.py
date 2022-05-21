#!/usr/bin/env python3

import rclpy
import time
from rclpy.node import Node
from rclpy.duration import Duration

from geometry_msgs.msg import Vector3
from std_msgs.msg import ColorRGBA
from visualization_msgs.msg import Marker
from soccer_vision_3d_msgs.msg import BallArray, FieldBoundary, GoalpostArray, RobotArray
from soccer_vision_attribute_msgs.msg import Confidence, Robot as RobotAttribute


class SoccerVision3DMsgs2Rviz(Node):
    """This node provides RViz markers coresponding to the recognized objects."""

    def __init__(self):
        super().__init__('SVM2DRviz')

        # Create publishers
        self.marker_publisher = self.create_publisher(Marker, "soccer_vision_3d_msgs", 1)

        # Settings
        self.ball_diameter = 0.13
        self.ball_lifetime = int(5e9)
        self.goal_lifetime = int(5e9)
        self.obstacle_lifetime = int(5e9)
        self.robot_lifetime = int(5e9)

        # Ball
        self.marker_ball = Marker()
        self.marker_ball.ns = "rel_ball"
        self.marker_ball.id = 0
        self.marker_ball.type = Marker.SPHERE
        self.marker_ball.action = Marker.MODIFY
        self.marker_ball.scale = Vector3(** dict(zip("xyz", [self.ball_diameter] * 3)))
        self.marker_ball.color = ColorRGBA(r=1.0, a=1.0)
        self.marker_ball.lifetime = Duration(nanoseconds=self.ball_lifetime).to_msg()

        # Goalpost
        self.marker_goalpost = Marker()
        self.marker_goalpost.ns = "rel_goal"
        self.marker_goalpost.id = 0
        self.marker_goalpost.type = Marker.CYLINDER
        self.marker_goalpost.action = Marker.MODIFY
        self.marker_goalpost.scale = Vector3()
        self.marker_goalpost.color = ColorRGBA(r=1.0, g=1.0, b=1.0, a=1.0)
        self.marker_goalpost.lifetime = Duration(nanoseconds=self.goal_lifetime).to_msg()

        # Robot
        self.marker_robot = Marker()
        self.marker_robot.lifetime = Duration(nanoseconds=self.robot_lifetime).to_msg()
        self.marker_robot.ns = "rel_robot"
        self.marker_robot.action = Marker.MODIFY
        self.marker_robot.color = ColorRGBA(a=1.0)
        self.marker_robot.type = Marker.CUBE

        # Field Boundary
        self.field_boundary = Marker()
        self.field_boundary.lifetime = Duration(nanoseconds=self.robot_lifetime).to_msg()
        self.field_boundary.ns = "rel_field_boundary"
        self.field_boundary.color = ColorRGBA(g=1.0, a=1.0)
        self.field_boundary.type = Marker.LINE_STRIP
        self.field_boundary.action = Marker.MODIFY
        self.field_boundary.lifetime = Duration(nanoseconds=self.goal_lifetime).to_msg()
        self.field_boundary.scale = Vector3(x=0.02)

        self.create_subscription(BallArray, "balls_relative", self.balls_cb, 10)
        self.create_subscription(GoalpostArray, "goal_posts_relative", self.goalpost_cb, 10)
        self.create_subscription(RobotArray, "robots_relative", self.robot_cb, 10)
        self.create_subscription(FieldBoundary, "field_boundary_relative", self.field_boundary_cb, 10)

    def conf_to_alpha(self, conf: Confidence):
        if conf.confidence == Confidence.CONFIDENCE_UNKNOWN:
            return 1.0
        return conf.confidence

    def balls_cb(self, msg: BallArray):
        self.marker_ball.header = msg.header
        for idx, ball in enumerate(msg.balls):
            self.marker_ball.pose.position = ball.center
            self.marker_ball.pose.orientation.w = 1.0
            self.marker_ball.color.a = self.conf_to_alpha(ball.confidence)
            self.marker_ball.id = idx
            self.marker_publisher.publish(self.marker_ball)

    def goalpost_cb(self, msg: GoalpostArray):
        self.marker_goalpost.header = msg.header
        for idx, post in enumerate(msg.posts):
            self.marker_goalpost.pose = post.bb.center
            self.marker_goalpost.pose.position.z = post.bb.center.position.z + post.bb.size.z / 2
            self.marker_goalpost.scale = post.bb.size
            self.marker_goalpost.color.a = self.conf_to_alpha(post.confidence)
            self.marker_goalpost.id = idx
            self.marker_publisher.publish(self.marker_goalpost)

    def robot_cb(self, msg: RobotArray):
        self.marker_robot.header = msg.header
        for idx, robot in enumerate(msg.robots):
            self.marker_robot.pose = robot.bb.center
            self.marker_robot.pose.position.z = robot.bb.center.position.z + robot.bb.size.z / 2
            self.marker_robot.scale = robot.bb.size
            if robot.attributes.team == RobotAttribute.TEAM_OWN:
                self.marker_robot.color.r = 0.0
                self.marker_robot.color.g = 0.0
                self.marker_robot.color.b = 1.0
            elif robot.attributes.team == RobotAttribute.TEAM_OPPONENT:
                self.marker_robot.color.r = 1.0
                self.marker_robot.color.g = 0.0
                self.marker_robot.color.b = 0.0
            elif robot.attributes.team == RobotAttribute.TEAM_UNKNOWN:
                self.marker_robot.color.r = 0.0
                self.marker_robot.color.g = 1.0
                self.marker_robot.color.b = 0.0
            else:
                self.get_logger().error(f"Unknown team {robot.attributes.team}")
                return
            self.marker_robot.color.a = self.conf_to_alpha(robot.confidence)
            self.marker_robot.id = idx
            self.marker_publisher.publish(self.marker_robot)

    def field_boundary_cb(self, msg: FieldBoundary):
        self.field_boundary.header = msg.header
        self.field_boundary.points = msg.points
        self.marker_publisher.publish(self.field_boundary)


if __name__ == "__main__":
    rclpy.init()
    node = SoccerVision3DMsgs2Rviz()
    try:
        rclpy.spin(node)
    except KeyboardInterrupt:
        pass
    node.destroy_node()
    rclpy.shutdown()
