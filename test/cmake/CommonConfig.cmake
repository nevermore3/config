# Copyright (c) 2023 vesoft inc. All rights reserved.
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)


if (CMAKE_BUILD_TYPE STREQUAL "Debug")
    add_compile_options(-ggdb3)
endif()

macro(my_add_exe_linker_flag flag)
    string(FIND "${CMAKE_EXE_LINKER_FLAGS}"  "${flag}" position)
    if (${position} EQUAL -1)
        set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} ${flag}")
    endif()
endmacro()

macro(my_add_shared_linker_flag flag)
    string(FIND "${CMAKE_SHARED_LINKER_FLAGS}"  "${flag}" position)
    if (${position} EQUAL -1)
        set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} ${flag}")
    endif()
endmacro()

