# Describes a detected robot from vision modules, in image coordinates.

<<<<<<< HEAD
uint8 NUMBER_UNKNOWN=0

uint8 TEAM_UNKNOWN=0
uint8 TEAM_OWN=1
uint8 TEAM_OPPONENT=2

uint8 STATE_UKNOWN=0
uint8 STATE_STANDING=1
uint8 STATE_FALLEN=2
uint8 STATE_KICKING=3
uint8 STATE_INACTIVE=4

uint8 FACING_UNKNOWN=0
uint8 FACING_THIS_WAY=1
uint8 FACING_AWAY=2
uint8 FACING_LEFT=3
uint8 FACING_RIGHT=4

float32 CONFIDENCE_UNKNOWN=-1

=======
>>>>>>> e7a5a23 (add Robot.msg)
# A bounding box that surrounds the robot in the image, this does not have to include
# the whole robot, but only the part of the robot that was detected.
vision_msgs/BoundingBox2D bb

soccer_vision_attribute_msgs/Robot attributes

soccer_vision_attribute_msgs/Confidence confidence
