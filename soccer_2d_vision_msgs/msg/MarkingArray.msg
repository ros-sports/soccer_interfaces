# An array of markings with a header for global reference.
# This msg type is used to publish all markings detected in an image.

std_msgs/Header header
MarkingEllipse[] ellipses
MarkingIntersection[] intersections
MarkingSegment[] segments
