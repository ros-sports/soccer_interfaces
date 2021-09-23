# Describes a detected goalpost from vision modules, in image coordinates.

uint8 SIDE_UNKNOWN=0
uint8 SIDE_LEFT=1
uint8 SIDE_RIGHT=2

uint8 TEAM_UNKNOWN=0
uint8 TEAM_OWN=1
uint8 TEAM_OPPONENT=2

# A bounding box that surrounds the goalpost in the image,
# this does not have to include the whole goalpost, but only the 
# part of the goalpost that was detected.
vision_msgs/BoundingBox2D bb

# Top and bottom points defining the significant axis of the post.
# The z-axis should be ignored.
# The points should be located at the centre along the width of the post.
geometry_msgs/Point top
geometry_msgs/Point bottom

# Orthogonal to significant vector (in pixel)
float32 width

# Whether the post is a left or right post, when looking INTO the goal.
# Value can be SIDE_UNKNOWN, SIDE_LEFT or SIDE_RIGHT
uint8 side

# Which team's goal, the goalpost is part of. A team's goal is the one
# they have to defend. This can be useful if the two goals have different colors,
# and you know whether you're looking at your own or opponent's goal.
# Value can be TEAM_UNKNOWN, TEAM_OWN or TEAM_OPPONENT
uint8 team

# Whether the goalpost has a confidence value associated.
bool has_confidence

# NOTE: only used if has_confidence is true
# A confidence rating between 0 and 1, used if has_confidence is true.
# 0 - goalpost detection module is 0% sure it is a goalpost.
# 1 - goalpost detection module is 100% sure it is a goalpost.
float32 confidence