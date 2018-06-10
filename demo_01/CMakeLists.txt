cmake_minimum_required(VERSION 2.6)

project(test)

# METHOD 1
# aux_source_directory(. DIR_SRCS)
# add_executable(testbin ${DIR_SRCS})


# METHOD 2
add_executable(testbin main.cpp)
