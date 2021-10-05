# Describes a detected marking intersection from vision modules, in image coordinates.
# An intersection is defined as a point where two line markings intersect.
# The term ray is used to describe the outgoing rays from the center of the
# intersection.
#
# For example, looking down at a perfectly upright T-intersection on the ground from above, you would have:
# - num_rays = 3
# - heading_rays = [0, pi / 2, pi]

float32 CONFIDENCE_UNKNOWN=-1

# Center point of the intersection, the z-axis should be ignored (in pixel)
geometry_msgs/Point center

# The number of rays outgoing from an intersection. This is 3 for a T-Junction and 
# 4 for an X-Junction
int32 num_rays

# NOTE: The length of this array should match num_rays.
# Heading is defined as 0 along the +x axis, and pi / 2 along the +y axis.
# Headings should:
# - have an interval of [0, 2pi)
# - be stored in ascending order
float64[] heading_rays

# A confidence rating between 0 and 1, or -1(CONFIDENCE_UNKNOWN) by default.
# 0 - intersection detection module is 0% sure it is a intersection.
# 1 - intersection detection module is 100% sure it is a intersection.
float32 confidence -1
