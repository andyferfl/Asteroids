# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

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
CMAKE_COMMAND = "C:/Program Files/CMake/bin/cmake.exe"

# The command to remove a file.
RM = "C:/Program Files/CMake/bin/cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:/Users/andvi/Desktop/uwo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:/Users/andvi/Desktop/uwo/build

# Include any dependencies generated for this target.
include CMakeFiles/game.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/game.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/game.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/game.dir/flags.make

CMakeFiles/game.dir/main.cpp.obj: CMakeFiles/game.dir/flags.make
CMakeFiles/game.dir/main.cpp.obj: CMakeFiles/game.dir/includes_CXX.rsp
CMakeFiles/game.dir/main.cpp.obj: ../main.cpp
CMakeFiles/game.dir/main.cpp.obj: CMakeFiles/game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/andvi/Desktop/uwo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/game.dir/main.cpp.obj"
	C:/MinGW/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/game.dir/main.cpp.obj -MF CMakeFiles/game.dir/main.cpp.obj.d -o CMakeFiles/game.dir/main.cpp.obj -c C:/Users/andvi/Desktop/uwo/main.cpp

CMakeFiles/game.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/game.dir/main.cpp.i"
	C:/MinGW/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:/Users/andvi/Desktop/uwo/main.cpp > CMakeFiles/game.dir/main.cpp.i

CMakeFiles/game.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/game.dir/main.cpp.s"
	C:/MinGW/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:/Users/andvi/Desktop/uwo/main.cpp -o CMakeFiles/game.dir/main.cpp.s

CMakeFiles/game.dir/game.cpp.obj: CMakeFiles/game.dir/flags.make
CMakeFiles/game.dir/game.cpp.obj: CMakeFiles/game.dir/includes_CXX.rsp
CMakeFiles/game.dir/game.cpp.obj: ../game.cpp
CMakeFiles/game.dir/game.cpp.obj: CMakeFiles/game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/andvi/Desktop/uwo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/game.dir/game.cpp.obj"
	C:/MinGW/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/game.dir/game.cpp.obj -MF CMakeFiles/game.dir/game.cpp.obj.d -o CMakeFiles/game.dir/game.cpp.obj -c C:/Users/andvi/Desktop/uwo/game.cpp

CMakeFiles/game.dir/game.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/game.dir/game.cpp.i"
	C:/MinGW/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:/Users/andvi/Desktop/uwo/game.cpp > CMakeFiles/game.dir/game.cpp.i

CMakeFiles/game.dir/game.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/game.dir/game.cpp.s"
	C:/MinGW/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:/Users/andvi/Desktop/uwo/game.cpp -o CMakeFiles/game.dir/game.cpp.s

CMakeFiles/game.dir/state.cpp.obj: CMakeFiles/game.dir/flags.make
CMakeFiles/game.dir/state.cpp.obj: CMakeFiles/game.dir/includes_CXX.rsp
CMakeFiles/game.dir/state.cpp.obj: ../state.cpp
CMakeFiles/game.dir/state.cpp.obj: CMakeFiles/game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/andvi/Desktop/uwo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/game.dir/state.cpp.obj"
	C:/MinGW/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/game.dir/state.cpp.obj -MF CMakeFiles/game.dir/state.cpp.obj.d -o CMakeFiles/game.dir/state.cpp.obj -c C:/Users/andvi/Desktop/uwo/state.cpp

CMakeFiles/game.dir/state.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/game.dir/state.cpp.i"
	C:/MinGW/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:/Users/andvi/Desktop/uwo/state.cpp > CMakeFiles/game.dir/state.cpp.i

CMakeFiles/game.dir/state.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/game.dir/state.cpp.s"
	C:/MinGW/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:/Users/andvi/Desktop/uwo/state.cpp -o CMakeFiles/game.dir/state.cpp.s

CMakeFiles/game.dir/menu-state.cpp.obj: CMakeFiles/game.dir/flags.make
CMakeFiles/game.dir/menu-state.cpp.obj: CMakeFiles/game.dir/includes_CXX.rsp
CMakeFiles/game.dir/menu-state.cpp.obj: ../menu-state.cpp
CMakeFiles/game.dir/menu-state.cpp.obj: CMakeFiles/game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/andvi/Desktop/uwo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/game.dir/menu-state.cpp.obj"
	C:/MinGW/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/game.dir/menu-state.cpp.obj -MF CMakeFiles/game.dir/menu-state.cpp.obj.d -o CMakeFiles/game.dir/menu-state.cpp.obj -c C:/Users/andvi/Desktop/uwo/menu-state.cpp

CMakeFiles/game.dir/menu-state.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/game.dir/menu-state.cpp.i"
	C:/MinGW/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:/Users/andvi/Desktop/uwo/menu-state.cpp > CMakeFiles/game.dir/menu-state.cpp.i

CMakeFiles/game.dir/menu-state.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/game.dir/menu-state.cpp.s"
	C:/MinGW/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:/Users/andvi/Desktop/uwo/menu-state.cpp -o CMakeFiles/game.dir/menu-state.cpp.s

CMakeFiles/game.dir/game-state.cpp.obj: CMakeFiles/game.dir/flags.make
CMakeFiles/game.dir/game-state.cpp.obj: CMakeFiles/game.dir/includes_CXX.rsp
CMakeFiles/game.dir/game-state.cpp.obj: ../game-state.cpp
CMakeFiles/game.dir/game-state.cpp.obj: CMakeFiles/game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/andvi/Desktop/uwo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/game.dir/game-state.cpp.obj"
	C:/MinGW/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/game.dir/game-state.cpp.obj -MF CMakeFiles/game.dir/game-state.cpp.obj.d -o CMakeFiles/game.dir/game-state.cpp.obj -c C:/Users/andvi/Desktop/uwo/game-state.cpp

CMakeFiles/game.dir/game-state.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/game.dir/game-state.cpp.i"
	C:/MinGW/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:/Users/andvi/Desktop/uwo/game-state.cpp > CMakeFiles/game.dir/game-state.cpp.i

CMakeFiles/game.dir/game-state.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/game.dir/game-state.cpp.s"
	C:/MinGW/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:/Users/andvi/Desktop/uwo/game-state.cpp -o CMakeFiles/game.dir/game-state.cpp.s

CMakeFiles/game.dir/pause-state.cpp.obj: CMakeFiles/game.dir/flags.make
CMakeFiles/game.dir/pause-state.cpp.obj: CMakeFiles/game.dir/includes_CXX.rsp
CMakeFiles/game.dir/pause-state.cpp.obj: ../pause-state.cpp
CMakeFiles/game.dir/pause-state.cpp.obj: CMakeFiles/game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/andvi/Desktop/uwo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/game.dir/pause-state.cpp.obj"
	C:/MinGW/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/game.dir/pause-state.cpp.obj -MF CMakeFiles/game.dir/pause-state.cpp.obj.d -o CMakeFiles/game.dir/pause-state.cpp.obj -c C:/Users/andvi/Desktop/uwo/pause-state.cpp

CMakeFiles/game.dir/pause-state.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/game.dir/pause-state.cpp.i"
	C:/MinGW/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:/Users/andvi/Desktop/uwo/pause-state.cpp > CMakeFiles/game.dir/pause-state.cpp.i

CMakeFiles/game.dir/pause-state.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/game.dir/pause-state.cpp.s"
	C:/MinGW/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:/Users/andvi/Desktop/uwo/pause-state.cpp -o CMakeFiles/game.dir/pause-state.cpp.s

CMakeFiles/game.dir/gameover-state.cpp.obj: CMakeFiles/game.dir/flags.make
CMakeFiles/game.dir/gameover-state.cpp.obj: CMakeFiles/game.dir/includes_CXX.rsp
CMakeFiles/game.dir/gameover-state.cpp.obj: ../gameover-state.cpp
CMakeFiles/game.dir/gameover-state.cpp.obj: CMakeFiles/game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/andvi/Desktop/uwo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/game.dir/gameover-state.cpp.obj"
	C:/MinGW/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/game.dir/gameover-state.cpp.obj -MF CMakeFiles/game.dir/gameover-state.cpp.obj.d -o CMakeFiles/game.dir/gameover-state.cpp.obj -c C:/Users/andvi/Desktop/uwo/gameover-state.cpp

CMakeFiles/game.dir/gameover-state.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/game.dir/gameover-state.cpp.i"
	C:/MinGW/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:/Users/andvi/Desktop/uwo/gameover-state.cpp > CMakeFiles/game.dir/gameover-state.cpp.i

CMakeFiles/game.dir/gameover-state.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/game.dir/gameover-state.cpp.s"
	C:/MinGW/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:/Users/andvi/Desktop/uwo/gameover-state.cpp -o CMakeFiles/game.dir/gameover-state.cpp.s

CMakeFiles/game.dir/entity.cpp.obj: CMakeFiles/game.dir/flags.make
CMakeFiles/game.dir/entity.cpp.obj: CMakeFiles/game.dir/includes_CXX.rsp
CMakeFiles/game.dir/entity.cpp.obj: ../entity.cpp
CMakeFiles/game.dir/entity.cpp.obj: CMakeFiles/game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/andvi/Desktop/uwo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/game.dir/entity.cpp.obj"
	C:/MinGW/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/game.dir/entity.cpp.obj -MF CMakeFiles/game.dir/entity.cpp.obj.d -o CMakeFiles/game.dir/entity.cpp.obj -c C:/Users/andvi/Desktop/uwo/entity.cpp

CMakeFiles/game.dir/entity.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/game.dir/entity.cpp.i"
	C:/MinGW/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:/Users/andvi/Desktop/uwo/entity.cpp > CMakeFiles/game.dir/entity.cpp.i

CMakeFiles/game.dir/entity.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/game.dir/entity.cpp.s"
	C:/MinGW/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:/Users/andvi/Desktop/uwo/entity.cpp -o CMakeFiles/game.dir/entity.cpp.s

CMakeFiles/game.dir/asteroid.cpp.obj: CMakeFiles/game.dir/flags.make
CMakeFiles/game.dir/asteroid.cpp.obj: CMakeFiles/game.dir/includes_CXX.rsp
CMakeFiles/game.dir/asteroid.cpp.obj: ../asteroid.cpp
CMakeFiles/game.dir/asteroid.cpp.obj: CMakeFiles/game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/andvi/Desktop/uwo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/game.dir/asteroid.cpp.obj"
	C:/MinGW/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/game.dir/asteroid.cpp.obj -MF CMakeFiles/game.dir/asteroid.cpp.obj.d -o CMakeFiles/game.dir/asteroid.cpp.obj -c C:/Users/andvi/Desktop/uwo/asteroid.cpp

CMakeFiles/game.dir/asteroid.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/game.dir/asteroid.cpp.i"
	C:/MinGW/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:/Users/andvi/Desktop/uwo/asteroid.cpp > CMakeFiles/game.dir/asteroid.cpp.i

CMakeFiles/game.dir/asteroid.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/game.dir/asteroid.cpp.s"
	C:/MinGW/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:/Users/andvi/Desktop/uwo/asteroid.cpp -o CMakeFiles/game.dir/asteroid.cpp.s

CMakeFiles/game.dir/spaceship.cpp.obj: CMakeFiles/game.dir/flags.make
CMakeFiles/game.dir/spaceship.cpp.obj: CMakeFiles/game.dir/includes_CXX.rsp
CMakeFiles/game.dir/spaceship.cpp.obj: ../spaceship.cpp
CMakeFiles/game.dir/spaceship.cpp.obj: CMakeFiles/game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/andvi/Desktop/uwo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/game.dir/spaceship.cpp.obj"
	C:/MinGW/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/game.dir/spaceship.cpp.obj -MF CMakeFiles/game.dir/spaceship.cpp.obj.d -o CMakeFiles/game.dir/spaceship.cpp.obj -c C:/Users/andvi/Desktop/uwo/spaceship.cpp

CMakeFiles/game.dir/spaceship.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/game.dir/spaceship.cpp.i"
	C:/MinGW/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:/Users/andvi/Desktop/uwo/spaceship.cpp > CMakeFiles/game.dir/spaceship.cpp.i

CMakeFiles/game.dir/spaceship.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/game.dir/spaceship.cpp.s"
	C:/MinGW/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:/Users/andvi/Desktop/uwo/spaceship.cpp -o CMakeFiles/game.dir/spaceship.cpp.s

CMakeFiles/game.dir/bullet.cpp.obj: CMakeFiles/game.dir/flags.make
CMakeFiles/game.dir/bullet.cpp.obj: CMakeFiles/game.dir/includes_CXX.rsp
CMakeFiles/game.dir/bullet.cpp.obj: ../bullet.cpp
CMakeFiles/game.dir/bullet.cpp.obj: CMakeFiles/game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/andvi/Desktop/uwo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/game.dir/bullet.cpp.obj"
	C:/MinGW/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/game.dir/bullet.cpp.obj -MF CMakeFiles/game.dir/bullet.cpp.obj.d -o CMakeFiles/game.dir/bullet.cpp.obj -c C:/Users/andvi/Desktop/uwo/bullet.cpp

CMakeFiles/game.dir/bullet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/game.dir/bullet.cpp.i"
	C:/MinGW/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:/Users/andvi/Desktop/uwo/bullet.cpp > CMakeFiles/game.dir/bullet.cpp.i

CMakeFiles/game.dir/bullet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/game.dir/bullet.cpp.s"
	C:/MinGW/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:/Users/andvi/Desktop/uwo/bullet.cpp -o CMakeFiles/game.dir/bullet.cpp.s

# Object files for target game
game_OBJECTS = \
"CMakeFiles/game.dir/main.cpp.obj" \
"CMakeFiles/game.dir/game.cpp.obj" \
"CMakeFiles/game.dir/state.cpp.obj" \
"CMakeFiles/game.dir/menu-state.cpp.obj" \
"CMakeFiles/game.dir/game-state.cpp.obj" \
"CMakeFiles/game.dir/pause-state.cpp.obj" \
"CMakeFiles/game.dir/gameover-state.cpp.obj" \
"CMakeFiles/game.dir/entity.cpp.obj" \
"CMakeFiles/game.dir/asteroid.cpp.obj" \
"CMakeFiles/game.dir/spaceship.cpp.obj" \
"CMakeFiles/game.dir/bullet.cpp.obj"

# External object files for target game
game_EXTERNAL_OBJECTS =

game.exe: CMakeFiles/game.dir/main.cpp.obj
game.exe: CMakeFiles/game.dir/game.cpp.obj
game.exe: CMakeFiles/game.dir/state.cpp.obj
game.exe: CMakeFiles/game.dir/menu-state.cpp.obj
game.exe: CMakeFiles/game.dir/game-state.cpp.obj
game.exe: CMakeFiles/game.dir/pause-state.cpp.obj
game.exe: CMakeFiles/game.dir/gameover-state.cpp.obj
game.exe: CMakeFiles/game.dir/entity.cpp.obj
game.exe: CMakeFiles/game.dir/asteroid.cpp.obj
game.exe: CMakeFiles/game.dir/spaceship.cpp.obj
game.exe: CMakeFiles/game.dir/bullet.cpp.obj
game.exe: CMakeFiles/game.dir/build.make
game.exe: ../SFML/lib/libsfml-graphics-d.a
game.exe: ../SFML/lib/libsfml-audio-d.a
game.exe: ../SFML/lib/libsfml-window-d.a
game.exe: ../SFML/lib/libsfml-system-d.a
game.exe: CMakeFiles/game.dir/linklibs.rsp
game.exe: CMakeFiles/game.dir/objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:/Users/andvi/Desktop/uwo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Linking CXX executable game.exe"
	"C:/Program Files/CMake/bin/cmake.exe" -E rm -f CMakeFiles/game.dir/objects.a
	C:/MinGW/bin/ar.exe qc CMakeFiles/game.dir/objects.a @CMakeFiles/game.dir/objects1.rsp
	C:/MinGW/bin/g++.exe -O3 -DNDEBUG -Wl,--whole-archive CMakeFiles/game.dir/objects.a -Wl,--no-whole-archive -o game.exe -Wl,--out-implib,libgame.dll.a -Wl,--major-image-version,0,--minor-image-version,0 @CMakeFiles/game.dir/linklibs.rsp

# Rule to build all files generated by this target.
CMakeFiles/game.dir/build: game.exe
.PHONY : CMakeFiles/game.dir/build

CMakeFiles/game.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/game.dir/cmake_clean.cmake
.PHONY : CMakeFiles/game.dir/clean

CMakeFiles/game.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" C:/Users/andvi/Desktop/uwo C:/Users/andvi/Desktop/uwo C:/Users/andvi/Desktop/uwo/build C:/Users/andvi/Desktop/uwo/build C:/Users/andvi/Desktop/uwo/build/CMakeFiles/game.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/game.dir/depend

