cmake_minimum_required(VERSION 3.1)
project(BB VERSION 0.1.0)

set(CMAKE_CXX_STANDARD 14)

set (SFML_DIR "${CMAKE_CURRENT_LIST_DIR}/SFML/lib/cmake/SFML")

find_package(SFML 2.5.1 COMPONENTS system window graphics audio REQUIRED)

include_directories(${SFML_INCLUDE_DIR})

add_executable(game main.cpp constants.hpp game.cpp game.hpp state.hpp state.cpp menu-state.hpp menu-state.cpp
              game-state.hpp game-state.cpp pause-state.hpp pause-state.cpp gameover-state.hpp gameover-state.cpp entity.hpp entity.cpp asteroid.hpp asteroid.cpp spaceship.hpp spaceship.cpp
              bullet.hpp bullet.cpp)

target_link_libraries(game sfml-system sfml-window sfml-graphics sfml-audio)
#${SFML_LIBRARIES} 

install(TARGETS game DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/ASTEROIDS/bin)
file(COPY "${CMAKE_CURRENT_LIST_DIR}/SFML/bin/"  DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/ASTEROIDS/bin)
file(COPY "${CMAKE_CURRENT_LIST_DIR}/images"  DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/ASTEROIDS)
file(COPY "${CMAKE_CURRENT_LIST_DIR}/music"  DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/ASTEROIDS)
file(COPY "${CMAKE_CURRENT_LIST_DIR}/fonts"  DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/ASTEROIDS)
