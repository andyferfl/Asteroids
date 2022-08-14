#ifndef GAME_HPP
#define GAME_HPP

#include <memory>
#include <map>

#include <SFML/Graphics.hpp>
#include <SFML/Audio.hpp>

#include "state.hpp"

class Game
{
public:
  Game();
  void run();

private :
  std::shared_ptr<sf::RenderWindow> window_;
  std::shared_ptr<State::StateID> currentState_;
  std::map<State::StateID, std::shared_ptr<State>> states_;
  sf::Music music_;

  static const std::string TITLE;
};

#endif
