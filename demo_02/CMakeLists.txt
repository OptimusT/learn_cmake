# CMakeLists.txt in ./
cmake_minimum_required(VERSION 2.6)
project(demo_02)

# find all *.cpp in the ./ and save to DIR_SRCS
aux_source_directory(. DIR_SRCS)

# add my_lib sub-folder
add_subdirectory(my_lib)

add_executable(demo2_bin main.cpp)

# add link library
target_link_libraries(demo2_bin my_lib_functions)
