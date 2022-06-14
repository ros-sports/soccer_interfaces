# soccer_interfaces
A set of packages which contain common soccer interface files

[![Build and Test (foxy)](https://github.com/ros-sports/soccer_interfaces/actions/workflows/build_and_test_foxy.yaml/badge.svg?branch=galactic)](https://github.com/ros-sports/soccer_interfaces/actions/workflows/build_and_test_foxy.yaml?query=branch:galactic)
[![Build and Test (galactic)](https://github.com/ros-sports/soccer_interfaces/actions/workflows/build_and_test_galactic.yaml/badge.svg?branch=galactic)](https://github.com/ros-sports/soccer_interfaces/actions/workflows/build_and_test_galactic.yaml?query=branch:galactic)
[![Build and Test (humble)](https://github.com/ros-sports/soccer_interfaces/actions/workflows/build_and_test_humble.yaml/badge.svg?branch=humble)](https://github.com/ros-sports/soccer_interfaces/actions/workflows/build_and_test_humble.yaml?query=branch:humble)
[![Build and Test (rolling)](https://github.com/ros-sports/soccer_interfaces/actions/workflows/build_and_test_rolling.yaml/badge.svg?branch=rolling)](https://github.com/ros-sports/soccer_interfaces/actions/workflows/build_and_test_rolling.yaml?query=branch:rolling)

## Installation

### ROS2 Rolling

Binary installation is available:

```
sudo apt install ros-rolling-soccer-interfaces
```

Alternatively to build from source, run the following in your ROS workspace:

```
git clone https://github.com/ros-sports/soccer_interfaces.git src/soccer_interfaces
colcon build
```

### ROS2 Humble

Binary installation is available:

```
sudo apt install ros-humble-soccer-interfaces
```

Alternatively to build from source, run the following in your ROS workspace:

```
git clone https://github.com/ros-sports/soccer_interfaces.git src/soccer_interfaces --branch humble
colcon build
```

### ROS2 Foxy and Galactic

Only source installation is available. Run the following in your ROS workspace:

```
git clone https://github.com/ros-sports/soccer_interfaces.git src/soccer_interfaces --branch galactic
colcon build
```

## Documentation

For documentation, see [Soccer Interfaces](https://soccer-interfaces.readthedocs.io/en/latest/).
