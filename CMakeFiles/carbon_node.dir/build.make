# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.29.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.29.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/richardmiles/CLionProjects/OmniLang-C-Template

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/richardmiles/CLionProjects/OmniLang-C-Template

# Include any dependencies generated for this target.
include CMakeFiles/carbon_node.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/carbon_node.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/carbon_node.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/carbon_node.dir/flags.make

CMakeFiles/carbon_node.dir/bindings/node/carbon_node.cpp.o: CMakeFiles/carbon_node.dir/flags.make
CMakeFiles/carbon_node.dir/bindings/node/carbon_node.cpp.o: bindings/node/carbon_node.cpp
CMakeFiles/carbon_node.dir/bindings/node/carbon_node.cpp.o: CMakeFiles/carbon_node.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/richardmiles/CLionProjects/OmniLang-C-Template/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/carbon_node.dir/bindings/node/carbon_node.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/carbon_node.dir/bindings/node/carbon_node.cpp.o -MF CMakeFiles/carbon_node.dir/bindings/node/carbon_node.cpp.o.d -o CMakeFiles/carbon_node.dir/bindings/node/carbon_node.cpp.o -c /Users/richardmiles/CLionProjects/OmniLang-C-Template/bindings/node/carbon_node.cpp

CMakeFiles/carbon_node.dir/bindings/node/carbon_node.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/carbon_node.dir/bindings/node/carbon_node.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/richardmiles/CLionProjects/OmniLang-C-Template/bindings/node/carbon_node.cpp > CMakeFiles/carbon_node.dir/bindings/node/carbon_node.cpp.i

CMakeFiles/carbon_node.dir/bindings/node/carbon_node.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/carbon_node.dir/bindings/node/carbon_node.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/richardmiles/CLionProjects/OmniLang-C-Template/bindings/node/carbon_node.cpp -o CMakeFiles/carbon_node.dir/bindings/node/carbon_node.cpp.s

# Object files for target carbon_node
carbon_node_OBJECTS = \
"CMakeFiles/carbon_node.dir/bindings/node/carbon_node.cpp.o"

# External object files for target carbon_node
carbon_node_EXTERNAL_OBJECTS =

libcarbon_node.dylib: CMakeFiles/carbon_node.dir/bindings/node/carbon_node.cpp.o
libcarbon_node.dylib: CMakeFiles/carbon_node.dir/build.make
libcarbon_node.dylib: libcarbon.dylib
libcarbon_node.dylib: CMakeFiles/carbon_node.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/richardmiles/CLionProjects/OmniLang-C-Template/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libcarbon_node.dylib"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/carbon_node.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/carbon_node.dir/build: libcarbon_node.dylib
.PHONY : CMakeFiles/carbon_node.dir/build

CMakeFiles/carbon_node.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/carbon_node.dir/cmake_clean.cmake
.PHONY : CMakeFiles/carbon_node.dir/clean

CMakeFiles/carbon_node.dir/depend:
	cd /Users/richardmiles/CLionProjects/OmniLang-C-Template && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/richardmiles/CLionProjects/OmniLang-C-Template /Users/richardmiles/CLionProjects/OmniLang-C-Template /Users/richardmiles/CLionProjects/OmniLang-C-Template /Users/richardmiles/CLionProjects/OmniLang-C-Template /Users/richardmiles/CLionProjects/OmniLang-C-Template/CMakeFiles/carbon_node.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/carbon_node.dir/depend
