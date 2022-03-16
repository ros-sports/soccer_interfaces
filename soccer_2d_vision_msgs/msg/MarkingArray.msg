# An array of markings with a header for global reference.
# This msg type is used to publish all markings detected in an image.

std_msgs/Header header
soccer_2d_vision_msgs/MarkingEllipse[] ellipses
soccer_2d_vision_msgs/MarkingIntersection[] intersections
soccer_2d_vision_msgs/MarkingSegment[] segments
