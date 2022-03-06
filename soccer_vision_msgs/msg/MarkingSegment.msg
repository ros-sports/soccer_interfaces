# Describes a detected straight segment marking from vision modules, in image coordinates.
# Note that curved segments can be approximated with a number of small segments, using
# this msg.

float32 CONFIDENCE_UNKNOWN=-1

# Two points defining the ends of the segment.
# The points should be located at the centre along the width of the segment marking.
geometry_msgs/Point start
geometry_msgs/Point end

# Width of segment at the start and end points. The width is defined as the number of
# pixels perpendicular to the segment, that the segment occupies.
float32 start_width
float32 end_width

# A confidence rating between 0 and 1, or -1(CONFIDENCE_UNKNOWN) by default.
# 0 - segment detection module is 0% sure it is a segment.
# 1 - segment detection module is 100% sure it is a segment.
float32 confidence -1
