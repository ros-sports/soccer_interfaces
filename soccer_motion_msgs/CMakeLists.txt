cmake_minimum_required(VERSION 3.8)
project(soccer_motion_msgs)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(geometry_msgs REQUIRED)

# generate interfaces
rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/Dead.msg"
  "msg/Getup.msg"
  "msg/Kick.msg"
  "msg/Ukemi.msg"
  "msg/Walk.msg"
  DEPENDENCIES geometry_msgs
)

ament_export_dependencies(rosidl_default_runtime)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  ament_lint_auto_find_test_dependencies()
endif()

ament_package()
