# CMake version check
cmake_minimum_required(VERSION 3.15.0)

# Set the project name
project ("test" C CXX)

set(CMAKE_BUILD_TYPE Debug)
message(STATUS "Build Type :${CMAKE_BUILD_TYPE}")

set(MY_USE_LINKER "mold")
message(STATUS "Linker : ${MY_USE_LINKER}")


# 将cmake目录添加到路径中
list(APPEND CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/cmake)
message(STATUS "CMAKE_MODULE_PATH is : ${CMAKE_MODULE_PATH}")

include(CommonConfig)

if (${MY_USE_LINKER} STREQUAL "mold")
    include(FindMoldLinker)
else()
    message(FATAL_ERROR "unsupport other linker except mold")
endif()
# add sub directory
add_subdirectory(src)
