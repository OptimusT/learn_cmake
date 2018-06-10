# CMakeLists.txt in my_lib
aux_source_directory(. DIR_LIBS_SRCS)
add_library(my_lib_functions ${DIR_LIBS_SRCS})
