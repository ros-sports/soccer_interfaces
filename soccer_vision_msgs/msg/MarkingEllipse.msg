# Describes a detected ellipse marking from vision modules, in image coordinates.

float32 CONFIDENCE_UNKNOWN=-1

# A bounding box that surrounds the ellipse in the image, this does not have to include
# the whole ellipse, but only the part of the ellipse that was detected.
vision_msgs/BoundingBox2D bb

# Center point of the ellipse in pixel coordinates
vision_msgs/Point2D center

# A confidence rating between 0 and 1, or -1(CONFIDENCE_UNKNOWN) by default.
# 0 - ellipse detection module is 0% sure it is a ellipse.
# 1 - ellipse detection module is 100% sure it is a ellipse.
float32 confidence -1
