cmake_minimum_required(VERSION 2.6)
project(demo03)

# METHOD 1
# add_executable(demo03_bin
#   main.cpp
#   my_point/myPoint.cpp
# )

# METHOD 2
add_subdirectory(my_math)
add_subdirectory(my_point)
add_executable(demo03_bin main.cpp)
target_link_libraries(demo03_bin my_point_lib)
