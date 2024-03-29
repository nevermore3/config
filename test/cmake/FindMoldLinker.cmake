# Copyright (c) 2023 vesoft inc. All rights reserved.

find_program (MOLD NAMES "mold")
if (NOT MOLD)
    message(FATAL_ERROR "Could not find the mold linker")
endif()


if (CMAKE_CXX_COMPILER_ID STREQUAL "GNU" AND CMAKE_CXX_COMPILER_VERSION VERSION_LESS 12.1.0)
    get_filename_component(MOLD_PATH ${MOLD} DIRECTORY)
    message(STATUS "Mold path is ${MOLD_PATH}")
    my_add_exe_linker_flag(-B${MOLD_PATH}/../libexec/mold)
    my_add_shared_linker_flag(-B${MOLD_PATH}/../libexec/mold)
else()
    my_add_exe_linker_flag(-fuse-ld=mold)
    my_add_shared_linker_flag(-fuse-ld=mold)
endif()

