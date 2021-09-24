# Describes a detected obstacle from vision modules, in image coordinates.

uint8 NUMBER_UNKNOWN=0

uint8 TEAM_UNKNOWN=0
uint8 TEAM_OWN=1
uint8 TEAM_OPPONENT=2

# A bounding box that surrounds the obstacle in the image, this does not have to include
# the whole obstacle, but only the part of the obstacle that was detected.
vision_msgs/BoundingBox2D bb

# The number of the robot, if it can be read from the image.
# Values can range from NUMBER_UNKNOWN(0) up to 255.
uint8 player_number

# Which team's robot it is. 
# Value can be TEAM_UNKNOWN, TEAM_OWN or TEAM_OPPONENT
uint8 team

# Whether the obstacle has a confidence value associated.
bool has_confidence

# NOTE: only used if has_confidence is true
# A confidence rating between 0 and 1, used if has_confidence is true.
# 0 - obstacle detection module is 0% sure it is an obstacle.
# 1 - obstacle detection module is 100% sure it is an obstacle.
float32 confidence