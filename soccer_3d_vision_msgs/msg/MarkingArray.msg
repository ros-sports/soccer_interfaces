# An array of markings with a header for global reference.
# This msg type is used to publish all markings detected in 3d space.

std_msgs/Header header
soccer_3d_vision_msgs/MarkingEllipse[] ellipses
soccer_3d_vision_msgs/MarkingIntersection[] intersections
soccer_3d_vision_msgs/MarkingSegment[] segments
