# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/majunyu/Code/learn_cmake/demo_02

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/majunyu/Code/learn_cmake/demo_02

# Include any dependencies generated for this target.
include my_lib/CMakeFiles/my_lib_functions.dir/depend.make

# Include the progress variables for this target.
include my_lib/CMakeFiles/my_lib_functions.dir/progress.make

# Include the compile flags for this target's objects.
include my_lib/CMakeFiles/my_lib_functions.dir/flags.make

my_lib/CMakeFiles/my_lib_functions.dir/myPoint.cpp.o: my_lib/CMakeFiles/my_lib_functions.dir/flags.make
my_lib/CMakeFiles/my_lib_functions.dir/myPoint.cpp.o: my_lib/myPoint.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/majunyu/Code/learn_cmake/demo_02/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object my_lib/CMakeFiles/my_lib_functions.dir/myPoint.cpp.o"
	cd /home/majunyu/Code/learn_cmake/demo_02/my_lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/my_lib_functions.dir/myPoint.cpp.o -c /home/majunyu/Code/learn_cmake/demo_02/my_lib/myPoint.cpp

my_lib/CMakeFiles/my_lib_functions.dir/myPoint.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_lib_functions.dir/myPoint.cpp.i"
	cd /home/majunyu/Code/learn_cmake/demo_02/my_lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/majunyu/Code/learn_cmake/demo_02/my_lib/myPoint.cpp > CMakeFiles/my_lib_functions.dir/myPoint.cpp.i

my_lib/CMakeFiles/my_lib_functions.dir/myPoint.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_lib_functions.dir/myPoint.cpp.s"
	cd /home/majunyu/Code/learn_cmake/demo_02/my_lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/majunyu/Code/learn_cmake/demo_02/my_lib/myPoint.cpp -o CMakeFiles/my_lib_functions.dir/myPoint.cpp.s

my_lib/CMakeFiles/my_lib_functions.dir/myPoint.cpp.o.requires:

.PHONY : my_lib/CMakeFiles/my_lib_functions.dir/myPoint.cpp.o.requires

my_lib/CMakeFiles/my_lib_functions.dir/myPoint.cpp.o.provides: my_lib/CMakeFiles/my_lib_functions.dir/myPoint.cpp.o.requires
	$(MAKE) -f my_lib/CMakeFiles/my_lib_functions.dir/build.make my_lib/CMakeFiles/my_lib_functions.dir/myPoint.cpp.o.provides.build
.PHONY : my_lib/CMakeFiles/my_lib_functions.dir/myPoint.cpp.o.provides

my_lib/CMakeFiles/my_lib_functions.dir/myPoint.cpp.o.provides.build: my_lib/CMakeFiles/my_lib_functions.dir/myPoint.cpp.o


# Object files for target my_lib_functions
my_lib_functions_OBJECTS = \
"CMakeFiles/my_lib_functions.dir/myPoint.cpp.o"

# External object files for target my_lib_functions
my_lib_functions_EXTERNAL_OBJECTS =

my_lib/libmy_lib_functions.a: my_lib/CMakeFiles/my_lib_functions.dir/myPoint.cpp.o
my_lib/libmy_lib_functions.a: my_lib/CMakeFiles/my_lib_functions.dir/build.make
my_lib/libmy_lib_functions.a: my_lib/CMakeFiles/my_lib_functions.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/majunyu/Code/learn_cmake/demo_02/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libmy_lib_functions.a"
	cd /home/majunyu/Code/learn_cmake/demo_02/my_lib && $(CMAKE_COMMAND) -P CMakeFiles/my_lib_functions.dir/cmake_clean_target.cmake
	cd /home/majunyu/Code/learn_cmake/demo_02/my_lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/my_lib_functions.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
my_lib/CMakeFiles/my_lib_functions.dir/build: my_lib/libmy_lib_functions.a

.PHONY : my_lib/CMakeFiles/my_lib_functions.dir/build

my_lib/CMakeFiles/my_lib_functions.dir/requires: my_lib/CMakeFiles/my_lib_functions.dir/myPoint.cpp.o.requires

.PHONY : my_lib/CMakeFiles/my_lib_functions.dir/requires

my_lib/CMakeFiles/my_lib_functions.dir/clean:
	cd /home/majunyu/Code/learn_cmake/demo_02/my_lib && $(CMAKE_COMMAND) -P CMakeFiles/my_lib_functions.dir/cmake_clean.cmake
.PHONY : my_lib/CMakeFiles/my_lib_functions.dir/clean

my_lib/CMakeFiles/my_lib_functions.dir/depend:
	cd /home/majunyu/Code/learn_cmake/demo_02 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/majunyu/Code/learn_cmake/demo_02 /home/majunyu/Code/learn_cmake/demo_02/my_lib /home/majunyu/Code/learn_cmake/demo_02 /home/majunyu/Code/learn_cmake/demo_02/my_lib /home/majunyu/Code/learn_cmake/demo_02/my_lib/CMakeFiles/my_lib_functions.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : my_lib/CMakeFiles/my_lib_functions.dir/depend

