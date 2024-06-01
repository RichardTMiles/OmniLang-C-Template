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
include CMakeFiles/carbon_python.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/carbon_python.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/carbon_python.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/carbon_python.dir/flags.make

bindings/python/carbon.c: bindings/python/carbon.pyx
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/richardmiles/CLionProjects/OmniLang-C-Template/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating C source from /Users/richardmiles/CLionProjects/OmniLang-C-Template/bindings/python/carbon.pyx"
	cython --cplus -3 /Users/richardmiles/CLionProjects/OmniLang-C-Template/bindings/python/carbon.pyx -o /Users/richardmiles/CLionProjects/OmniLang-C-Template/bindings/python/carbon.c

CMakeFiles/carbon_python.dir/bindings/python/carbon.c.o: CMakeFiles/carbon_python.dir/flags.make
CMakeFiles/carbon_python.dir/bindings/python/carbon.c.o: bindings/python/carbon.c
CMakeFiles/carbon_python.dir/bindings/python/carbon.c.o: CMakeFiles/carbon_python.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/richardmiles/CLionProjects/OmniLang-C-Template/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/carbon_python.dir/bindings/python/carbon.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/carbon_python.dir/bindings/python/carbon.c.o -MF CMakeFiles/carbon_python.dir/bindings/python/carbon.c.o.d -o CMakeFiles/carbon_python.dir/bindings/python/carbon.c.o -c /Users/richardmiles/CLionProjects/OmniLang-C-Template/bindings/python/carbon.c

CMakeFiles/carbon_python.dir/bindings/python/carbon.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/carbon_python.dir/bindings/python/carbon.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/richardmiles/CLionProjects/OmniLang-C-Template/bindings/python/carbon.c > CMakeFiles/carbon_python.dir/bindings/python/carbon.c.i

CMakeFiles/carbon_python.dir/bindings/python/carbon.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/carbon_python.dir/bindings/python/carbon.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/richardmiles/CLionProjects/OmniLang-C-Template/bindings/python/carbon.c -o CMakeFiles/carbon_python.dir/bindings/python/carbon.c.s

# Object files for target carbon_python
carbon_python_OBJECTS = \
"CMakeFiles/carbon_python.dir/bindings/python/carbon.c.o"

# External object files for target carbon_python
carbon_python_EXTERNAL_OBJECTS =

libcarbon_python.so: CMakeFiles/carbon_python.dir/bindings/python/carbon.c.o
libcarbon_python.so: CMakeFiles/carbon_python.dir/build.make
libcarbon_python.so: /usr/local/Frameworks/Python.framework/Versions/3.12/lib/libpython3.12.dylib
libcarbon_python.so: libcarbon.dylib
libcarbon_python.so: CMakeFiles/carbon_python.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/richardmiles/CLionProjects/OmniLang-C-Template/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C shared module libcarbon_python.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/carbon_python.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/carbon_python.dir/build: libcarbon_python.so
.PHONY : CMakeFiles/carbon_python.dir/build

CMakeFiles/carbon_python.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/carbon_python.dir/cmake_clean.cmake
.PHONY : CMakeFiles/carbon_python.dir/clean

CMakeFiles/carbon_python.dir/depend: bindings/python/carbon.c
	cd /Users/richardmiles/CLionProjects/OmniLang-C-Template && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/richardmiles/CLionProjects/OmniLang-C-Template /Users/richardmiles/CLionProjects/OmniLang-C-Template /Users/richardmiles/CLionProjects/OmniLang-C-Template /Users/richardmiles/CLionProjects/OmniLang-C-Template /Users/richardmiles/CLionProjects/OmniLang-C-Template/CMakeFiles/carbon_python.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/carbon_python.dir/depend

