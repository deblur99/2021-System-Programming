# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.20

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

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2021.1.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2021.1.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\deblu\CLionProjects\system_programming

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\deblu\CLionProjects\system_programming\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/system_programming.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/system_programming.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/system_programming.dir/flags.make

CMakeFiles/system_programming.dir/main.c.obj: CMakeFiles/system_programming.dir/flags.make
CMakeFiles/system_programming.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\deblu\CLionProjects\system_programming\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/system_programming.dir/main.c.obj"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\system_programming.dir\main.c.obj -c C:\Users\deblu\CLionProjects\system_programming\main.c

CMakeFiles/system_programming.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/system_programming.dir/main.c.i"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\deblu\CLionProjects\system_programming\main.c > CMakeFiles\system_programming.dir\main.c.i

CMakeFiles/system_programming.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/system_programming.dir/main.c.s"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\deblu\CLionProjects\system_programming\main.c -o CMakeFiles\system_programming.dir\main.c.s

# Object files for target system_programming
system_programming_OBJECTS = \
"CMakeFiles/system_programming.dir/main.c.obj"

# External object files for target system_programming
system_programming_EXTERNAL_OBJECTS =

system_programming.exe: CMakeFiles/system_programming.dir/main.c.obj
system_programming.exe: CMakeFiles/system_programming.dir/build.make
system_programming.exe: CMakeFiles/system_programming.dir/linklibs.rsp
system_programming.exe: CMakeFiles/system_programming.dir/objects1.rsp
system_programming.exe: CMakeFiles/system_programming.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\deblu\CLionProjects\system_programming\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable system_programming.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\system_programming.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/system_programming.dir/build: system_programming.exe
.PHONY : CMakeFiles/system_programming.dir/build

CMakeFiles/system_programming.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\system_programming.dir\cmake_clean.cmake
.PHONY : CMakeFiles/system_programming.dir/clean

CMakeFiles/system_programming.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\deblu\CLionProjects\system_programming C:\Users\deblu\CLionProjects\system_programming C:\Users\deblu\CLionProjects\system_programming\cmake-build-debug C:\Users\deblu\CLionProjects\system_programming\cmake-build-debug C:\Users\deblu\CLionProjects\system_programming\cmake-build-debug\CMakeFiles\system_programming.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/system_programming.dir/depend

