# Describes a detected straight segment marking from vision modules, in image coordinates.
# Note that curved segments can be approximated with a number of small segments, using
# this msg.

# Two points defining the vector of the segment. The center is orthogonally in the middle of the segment
# The points should be located at the centre along the width of the segment marking.
geometry_msgs/Point start
geometry_msgs/Point end

# Whether the ellipse has a confidence value associated.
bool has_confidence

# NOTE: only used if has_confidence is true
# A confidence rating between 0 and 1, used if has_confidence is true.
# 0 - ellipse detection module is 0% sure it is a ellipse.
# 1 - ellipse detection module is 100% sure it is a ellipse.
float32 confidence