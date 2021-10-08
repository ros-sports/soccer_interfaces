# Describes a detected field boundary from vision modules, in image coordinates.
# The field boundary is defined as the line that separates the field of play, to
# outside the field of play. Field of play is a sports terminology.
# Usually, this is where the field carpet ends, or meets a field border.

float32 CONFIDENCE_UNKNOWN=-1

# The points along the field boundary detected in the image, are stored as a line strip.
# You can think of the field boundary as a line between every two consecutive points,
# so 0-1, 1-2, 2-3, 3-4, 4-5...
geometry_msgs/Point[] points # 2D points (in pixel)

# A confidence rating between 0 and 1, or -1(CONFIDENCE_UNKNOWN) by default.
# 0 - field boundary detection module is 0% sure it is a field boundary.
# 1 - field boundary detection module is 100% sure it is a field boundary.
float32 confidence -1
