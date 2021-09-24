# Describes a detected ellipse marking from vision modules, in image coordinates.

# A bounding box that surrounds the ellipse in the image, this does not have to include
# the whole ellipse, but only the part of the ellipse that was detected.
vision_msgs/BoundingBox2D bb

# Center point of the ellipse, the z-axis should be ignored (in pixel)
geometry_msgs/Point center

# Whether the ellipse has a confidence value associated.
bool has_confidence

# NOTE: only used if has_confidence is true
# A confidence rating between 0 and 1, used if has_confidence is true.
# 0 - ellipse detection module is 0% sure it is a ellipse.
# 1 - ellipse detection module is 100% sure it is a ellipse.
float32 confidence