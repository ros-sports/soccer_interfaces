cmake_minimum_required(VERSION 3.8)
project(soccer_vision_msgs)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(vision_msgs REQUIRED)

# generate interfaces
rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/Ball.msg"
  "msg/BallArray.msg"
  "msg/Goalpost.msg"
  "msg/Obstacle.msg"
  "msg/Robot.msg"
  DEPENDENCIES vision_msgs
)

# export dependencies
ament_export_dependencies(rosidl_default_runtime)

# test
if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  ament_lint_auto_find_test_dependencies()
endif()

ament_package()
