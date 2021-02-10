cmake_minimum_required(VERSION 3.5)

project(ublox_serialization)

find_package(ament_cmake REQUIRED)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  # ament_lint_auto_find_test_dependencies()
endif()

install(DIRECTORY include/
  DESTINATION include
)

ament_export_include_directories(include)

ament_package()
