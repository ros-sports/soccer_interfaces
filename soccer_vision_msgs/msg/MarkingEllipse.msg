# Describes a detected ellipse marking from vision modules, in image coordinates.

float32 CONFIDENCE_UNKNOWN=-1

# Center point of the ellipse, the z-axis should be ignored (in pixels)
geometry_msgs/Point center

# Width of the ellipse (in pixels)
float32 width

# Height of the ellipse (in pixels)
float32 height

# A confidence rating between 0 and 1, or -1(CONFIDENCE_UNKNOWN) by default.
# 0 - ellipse detection module is 0% sure it is a ellipse.
# 1 - ellipse detection module is 100% sure it is a ellipse.
float32 confidence -1
