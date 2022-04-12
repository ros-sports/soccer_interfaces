std_msgs/Header header
geometry_msgs/PoseWithCovariance pose

# The number of the robot, if it can be read from the image.
# Values can range from NUMBER_UNKNOWN(0) up to 255.
uint8 player_number

# Which team's robot it is. 
# Value can be TEAM_UNKNOWN, TEAM_OWN or TEAM_OPPONENT
uint8 team

# State of the robot.
# Value can be one of the STATE_* constants defined in this msg
uint8 state

float32 confidence -1