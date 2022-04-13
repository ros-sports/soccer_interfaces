# soccer_interfaces
A set of packages which contain common soccer interface files

[![Build and Test (foxy)](https://github.com/ros-sports/soccer_interfaces/actions/workflows/build_and_test_foxy.yaml/badge.svg?branch=galactic)](https://github.com/ros-sports/soccer_interfaces/actions/workflows/build_and_test_foxy.yaml?query=branch:galactic)
[![Build and Test (galactic)](https://github.com/ros-sports/soccer_interfaces/actions/workflows/build_and_test_galactic.yaml/badge.svg?branch=galactic)](https://github.com/ros-sports/soccer_interfaces/actions/workflows/build_and_test_galactic.yaml?query=branch:galactic)
[![Build and Test (rolling)](https://github.com/ros-sports/soccer_interfaces/actions/workflows/build_and_test_rolling.yaml/badge.svg?branch=rolling)](https://github.com/ros-sports/soccer_interfaces/actions/workflows/build_and_test_rolling.yaml?query=branch:rolling)

## Installation

### For ROS2 Rolling

Only source installation is available. Run the following in your ROS workspace:

```
git clone https://github.com/ros-sports/soccer_interfaces.git src/soccer_interfaces
vcs import src < src/soccer_interfaces/dependencies.repos
colcon build --allow-overriding vision_msgs
```

### For ROS2 Foxy and Galactic

Only source installation is available. Run the following in your ROS workspace:

```
git clone https://github.com/ros-sports/soccer_interfaces.git src/soccer_interfaces --branch galactic
colcon build
<<<<<<< HEAD
```
=======
```

## Overview

**soccer_vision_2d_msgs**

Provides 2d messages for visually detected objects on a soccer field, such as balls, field markings and robots.

**soccer_vision_3d_msgs**

Provides 3d messages for visually detected objects on a soccer field, such as balls, field markings and robots

**soccer_vision_attribute_msgs**

Messages for attributes for objects on a soccer field, such as balls, field markings and robots, that could be visually detected.
Such attributes can be defined separatly in ``soccer_vision_2d_msgs`` and ``soccer_vision_3d_msgs``, but due to large overlap in information, this package aims to abstract out the attributes that aren't specific to 2d/3d vision.
``soccer_vision_2d_msgs`` and ``soccer_vision_3d_msgs`` depends on this package.
>>>>>>> a1b7b2b (add overrview to readme)
