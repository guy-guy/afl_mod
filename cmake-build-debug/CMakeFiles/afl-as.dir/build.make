# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /home/guy/clion-2017.3.4/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/guy/clion-2017.3.4/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/guy/afl/afl

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/guy/afl/afl/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/afl-as.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/afl-as.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/afl-as.dir/flags.make

CMakeFiles/afl-as.dir/afl-as.c.o: CMakeFiles/afl-as.dir/flags.make
CMakeFiles/afl-as.dir/afl-as.c.o: ../afl-as.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/guy/afl/afl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/afl-as.dir/afl-as.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/afl-as.dir/afl-as.c.o   -c /home/guy/afl/afl/afl-as.c

CMakeFiles/afl-as.dir/afl-as.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/afl-as.dir/afl-as.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/guy/afl/afl/afl-as.c > CMakeFiles/afl-as.dir/afl-as.c.i

CMakeFiles/afl-as.dir/afl-as.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/afl-as.dir/afl-as.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/guy/afl/afl/afl-as.c -o CMakeFiles/afl-as.dir/afl-as.c.s

CMakeFiles/afl-as.dir/afl-as.c.o.requires:

.PHONY : CMakeFiles/afl-as.dir/afl-as.c.o.requires

CMakeFiles/afl-as.dir/afl-as.c.o.provides: CMakeFiles/afl-as.dir/afl-as.c.o.requires
	$(MAKE) -f CMakeFiles/afl-as.dir/build.make CMakeFiles/afl-as.dir/afl-as.c.o.provides.build
.PHONY : CMakeFiles/afl-as.dir/afl-as.c.o.provides

CMakeFiles/afl-as.dir/afl-as.c.o.provides.build: CMakeFiles/afl-as.dir/afl-as.c.o


# Object files for target afl-as
afl__as_OBJECTS = \
"CMakeFiles/afl-as.dir/afl-as.c.o"

# External object files for target afl-as
afl__as_EXTERNAL_OBJECTS =

afl-as: CMakeFiles/afl-as.dir/afl-as.c.o
afl-as: CMakeFiles/afl-as.dir/build.make
afl-as: CMakeFiles/afl-as.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/guy/afl/afl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable afl-as"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/afl-as.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/afl-as.dir/build: afl-as

.PHONY : CMakeFiles/afl-as.dir/build

CMakeFiles/afl-as.dir/requires: CMakeFiles/afl-as.dir/afl-as.c.o.requires

.PHONY : CMakeFiles/afl-as.dir/requires

CMakeFiles/afl-as.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/afl-as.dir/cmake_clean.cmake
.PHONY : CMakeFiles/afl-as.dir/clean

CMakeFiles/afl-as.dir/depend:
	cd /home/guy/afl/afl/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/guy/afl/afl /home/guy/afl/afl /home/guy/afl/afl/cmake-build-debug /home/guy/afl/afl/cmake-build-debug /home/guy/afl/afl/cmake-build-debug/CMakeFiles/afl-as.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/afl-as.dir/depend

