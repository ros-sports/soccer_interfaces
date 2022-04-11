# Describes a detected ellipse marking from vision modules, in image coordinates.

# A bounding box that surrounds the ellipse in the image, this does not have to include
# the whole ellipse, but only the part of the ellipse that was detected.
vision_msgs/BoundingBox2D bb

# Center point of the ellipse, the z-axis should be ignored (in pixel)
geometry_msgs/Point center

soccer_vision_attribute_msgs/Confidence confidence
