#!/usr/bin/env cmake -P

cmake_minimum_required(VERSION 3.0)

set(MODE_UNDEFINED 0)
set(MODE_UNIX 1)
set(MODE_MSYS 2)

function(get_current_mode mode)
    execute_process(
        COMMAND ${CMAKE_COMMAND} --help
        OUTPUT_VARIABLE cmake_help
    )
    string(FIND ${cmake_help} "MSYS Makefiles" msys_loc)
    string(FIND ${cmake_help} "Unix Makefiles" unix_loc)

    if(NOT ${msys_loc} EQUAL -1)
        set(${mode} ${MODE_MSYS} PARENT_SCOPE)
        return()
    elseif(NOT ${unix_loc} EQUAL -1)
        set(${mode} ${MODE_UNIX} PARENT_SCOPE)
        return()
    else()
        set(${mode} ${MODE_UNDEFINED} PARENT_SCOPE)
        return()
    endif()
endfunction(get_current_mode)

get_current_mode(mode)

if(${mode} EQUAL ${MODE_UNIX})
    set(generator_opt -G "Unix Makefiles")
    get_filename_component(
        build_dir ./Chaos.Build/build.unix ABSOLUTE
    )
elseif(${mode} EQUAL ${MODE_MSYS})
    set(generator_opt -G "MSYS Makefiles")
    get_filename_component(
        build_dir ./Chaos.Build/build.msys ABSOLUTE
    )
else()
    message(FATAL_ERROR "can't determine generator")
endif()

message(STATUS "build directory  :: ${build_dir}")

if(EXISTS ${build_dir})
    message(STATUS "build directory already exists :: ${build_dir}")
else()
    message(STATUS "create build directory :: ${build_dir}")
    file(MAKE_DIRECTORY ${build_dir})
endif()

set(
    cmake_configure ${CMAKE_COMMAND} ${generator_opt} ${CMAKE_CURRENT_LIST_DIR}
)

message(STATUS "run :: ${cmake_configure}")

execute_process(
    COMMAND ${cmake_configure}
    WORKING_DIRECTORY ${build_dir}
)

execute_process(
    COMMAND make
    WORKING_DIRECTORY ${build_dir}
)
