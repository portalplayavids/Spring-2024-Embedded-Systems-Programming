# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /app

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /app/build

# Include any dependencies generated for this target.
include CMakeFiles/Arithmetic.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Arithmetic.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Arithmetic.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Arithmetic.dir/flags.make

CMakeFiles/Arithmetic.dir/arithmetic-CPP.cpp.o: CMakeFiles/Arithmetic.dir/flags.make
CMakeFiles/Arithmetic.dir/arithmetic-CPP.cpp.o: ../arithmetic-CPP.cpp
CMakeFiles/Arithmetic.dir/arithmetic-CPP.cpp.o: CMakeFiles/Arithmetic.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Arithmetic.dir/arithmetic-CPP.cpp.o"
	//duo-sdk/riscv64-linux-musl-x86_64/bin/riscv64-unknown-linux-musl-g++ --sysroot=//duo-sdk/rootfs $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Arithmetic.dir/arithmetic-CPP.cpp.o -MF CMakeFiles/Arithmetic.dir/arithmetic-CPP.cpp.o.d -o CMakeFiles/Arithmetic.dir/arithmetic-CPP.cpp.o -c /app/arithmetic-CPP.cpp

CMakeFiles/Arithmetic.dir/arithmetic-CPP.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Arithmetic.dir/arithmetic-CPP.cpp.i"
	//duo-sdk/riscv64-linux-musl-x86_64/bin/riscv64-unknown-linux-musl-g++ --sysroot=//duo-sdk/rootfs $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /app/arithmetic-CPP.cpp > CMakeFiles/Arithmetic.dir/arithmetic-CPP.cpp.i

CMakeFiles/Arithmetic.dir/arithmetic-CPP.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Arithmetic.dir/arithmetic-CPP.cpp.s"
	//duo-sdk/riscv64-linux-musl-x86_64/bin/riscv64-unknown-linux-musl-g++ --sysroot=//duo-sdk/rootfs $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /app/arithmetic-CPP.cpp -o CMakeFiles/Arithmetic.dir/arithmetic-CPP.cpp.s

# Object files for target Arithmetic
Arithmetic_OBJECTS = \
"CMakeFiles/Arithmetic.dir/arithmetic-CPP.cpp.o"

# External object files for target Arithmetic
Arithmetic_EXTERNAL_OBJECTS =

Arithmetic: CMakeFiles/Arithmetic.dir/arithmetic-CPP.cpp.o
Arithmetic: CMakeFiles/Arithmetic.dir/build.make
Arithmetic: libarithmetic.a
Arithmetic: libcpparithmetic.a
Arithmetic: CMakeFiles/Arithmetic.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Arithmetic"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Arithmetic.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Arithmetic.dir/build: Arithmetic
.PHONY : CMakeFiles/Arithmetic.dir/build

CMakeFiles/Arithmetic.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Arithmetic.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Arithmetic.dir/clean

CMakeFiles/Arithmetic.dir/depend:
	cd /app/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /app /app /app/build /app/build /app/build/CMakeFiles/Arithmetic.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Arithmetic.dir/depend

