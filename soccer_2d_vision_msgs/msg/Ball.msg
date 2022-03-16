# Describes a detected ball from vision modules, in image coordinates.

float32 CONFIDENCE_UNKNOWN=-1

# A bounding box that surrounds the ball in the image, this does not have to include
# the whole ball, but only the part of the ball that was detected.
vision_msgs/BoundingBox2D bb

# Center point of the ball, the z-axis should be ignored (in pixel)
geometry_msgs/Point center

# A confidence rating between 0 and 1, or -1(CONFIDENCE_UNKNOWN) by default.
# 0 - ball detection module is 0% sure it is a ball.
# 1 - ball detection module is 100% sure it is a ball.
float32 confidence -1
