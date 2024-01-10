# CMake version check
cmake_minimum_required(VERSION 3.15.0)

# Set the project name
project ("test" C CXX)

set(CMAKE_BUILD_TYPE Debug)
message(STATUS "Build Type :${CMAKE_BUILD_TYPE}")

# add sub directory
add_subdirectory(src)
