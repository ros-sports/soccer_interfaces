# Describes a detected obstacle from vision modules, in image coordinates.
# An Obstacle is defined as anything observed on the field that could not be classified as
# one of the known types (such as Robot or Goalpost).

float32 CONFIDENCE_UNKNOWN=-1

# A bounding box that surrounds the obstacle in the image, this does not have to include
# the whole obstacle, but only the part of the obstacle that was detected.
vision_msgs/BoundingBox2D bb

# A confidence rating between 0 and 1, or -1(CONFIDENCE_UNKNOWN) by default.
# 0 - obstacle detection module is 0% sure it is a obstacle.
# 1 - obstacle detection module is 100% sure it is a obstacle.
float32 confidence -1
