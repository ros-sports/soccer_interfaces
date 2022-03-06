# Describes a detected ball from vision modules, in image coordinates.

float32 CONFIDENCE_UNKNOWN=-1

# Diameter of the ball (in pixels)
float32 diameter

# Center point of the ball, the z-axis should be ignored (in pixels)
geometry_msgs/Point center

# A confidence rating between 0 and 1, or -1(CONFIDENCE_UNKNOWN) by default.
# 0 - ball detection module is 0% sure it is a ball.
# 1 - ball detection module is 100% sure it is a ball.
float32 confidence -1
