# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

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
CMAKE_COMMAND = /var/lib/snapd/snap/clion/145/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /var/lib/snapd/snap/clion/145/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/petko/workspace/oop-2020-21/cs-2-practical/06-moreUno-linkedList/ExplicitExample

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/petko/workspace/oop-2020-21/cs-2-practical/06-moreUno-linkedList/ExplicitExample/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/ExplicitExample.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ExplicitExample.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ExplicitExample.dir/flags.make

CMakeFiles/ExplicitExample.dir/main.cpp.o: CMakeFiles/ExplicitExample.dir/flags.make
CMakeFiles/ExplicitExample.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/petko/workspace/oop-2020-21/cs-2-practical/06-moreUno-linkedList/ExplicitExample/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ExplicitExample.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ExplicitExample.dir/main.cpp.o -c /home/petko/workspace/oop-2020-21/cs-2-practical/06-moreUno-linkedList/ExplicitExample/main.cpp

CMakeFiles/ExplicitExample.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ExplicitExample.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/petko/workspace/oop-2020-21/cs-2-practical/06-moreUno-linkedList/ExplicitExample/main.cpp > CMakeFiles/ExplicitExample.dir/main.cpp.i

CMakeFiles/ExplicitExample.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ExplicitExample.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/petko/workspace/oop-2020-21/cs-2-practical/06-moreUno-linkedList/ExplicitExample/main.cpp -o CMakeFiles/ExplicitExample.dir/main.cpp.s

# Object files for target ExplicitExample
ExplicitExample_OBJECTS = \
"CMakeFiles/ExplicitExample.dir/main.cpp.o"

# External object files for target ExplicitExample
ExplicitExample_EXTERNAL_OBJECTS =

ExplicitExample: CMakeFiles/ExplicitExample.dir/main.cpp.o
ExplicitExample: CMakeFiles/ExplicitExample.dir/build.make
ExplicitExample: CMakeFiles/ExplicitExample.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/petko/workspace/oop-2020-21/cs-2-practical/06-moreUno-linkedList/ExplicitExample/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ExplicitExample"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ExplicitExample.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ExplicitExample.dir/build: ExplicitExample

.PHONY : CMakeFiles/ExplicitExample.dir/build

CMakeFiles/ExplicitExample.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ExplicitExample.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ExplicitExample.dir/clean

CMakeFiles/ExplicitExample.dir/depend:
	cd /home/petko/workspace/oop-2020-21/cs-2-practical/06-moreUno-linkedList/ExplicitExample/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/petko/workspace/oop-2020-21/cs-2-practical/06-moreUno-linkedList/ExplicitExample /home/petko/workspace/oop-2020-21/cs-2-practical/06-moreUno-linkedList/ExplicitExample /home/petko/workspace/oop-2020-21/cs-2-practical/06-moreUno-linkedList/ExplicitExample/cmake-build-debug /home/petko/workspace/oop-2020-21/cs-2-practical/06-moreUno-linkedList/ExplicitExample/cmake-build-debug /home/petko/workspace/oop-2020-21/cs-2-practical/06-moreUno-linkedList/ExplicitExample/cmake-build-debug/CMakeFiles/ExplicitExample.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ExplicitExample.dir/depend
