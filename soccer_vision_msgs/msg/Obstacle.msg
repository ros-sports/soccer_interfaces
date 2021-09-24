# Describes a detected obstacle from vision modules, in image coordinates.

# A bounding box that surrounds the obstacle in the image, this does not have to include
# the whole obstacle, but only the part of the obstacle that was detected.
vision_msgs/BoundingBox2D bb

# Whether the obstacle has a confidence value associated.
bool has_confidence

# NOTE: only used if has_confidence is true
# A confidence rating between 0 and 1, used if has_confidence is true.
# 0 - obstacle detection module is 0% sure it is an obstacle.
# 1 - obstacle detection module is 100% sure it is an obstacle.
float32 confidence