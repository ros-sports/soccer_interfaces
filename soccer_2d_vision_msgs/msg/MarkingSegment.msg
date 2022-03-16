# Describes a detected straight segment marking from vision modules, in image coordinates.
# Note that curved segments can be approximated with a number of small segments, using
# this msg.

# Two points defining the ends of the segment.
# The points should be located at the centre along the width of the segment marking.
geometry_msgs/Point start
geometry_msgs/Point end

soccer_vision_attribute_msgs/Confidence confidence
