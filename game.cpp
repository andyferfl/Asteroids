#include "Game.hpp"

#include <memory>
#include <map>

#include <SFML/Window.hpp>
#include <SFML/Graphics.hpp>

#include "constants.hpp"
#include "state.hpp"
#include "menu-state.hpp"
#include "game-state.hpp"
#include "pause-state.hpp"
#include "gameover-state.hpp"

const std::string Game::TITLE = "Asteroids";

Game::Game() :
  window_(std::make_shared<sf::RenderWindow>()),
  currentState_(std::make_shared<State::StateID>(State::StateID::MENU))
{
  window_->create(sf::VideoMode(WIDTH, HEIGHT), TITLE);
  window_->setKeyRepeatEnabled(true);

  states_[State::StateID::MENU] = std::make_shared<MenuState>(window_, currentState_);
  states_[State::StateID::PLAY] = std::make_shared<GameState>(window_, currentState_);
  states_[State::StateID::PAUSE] = std::make_shared<PauseState>(window_, currentState_);
  states_[State::StateID::GAME_OVER] = std::make_shared<GameoverState>(window_, currentState_);

  if (!music_.openFromFile("../music/song.wav"))
  {
    throw std::runtime_error("Music loading error");
  }

  music_.setLoop(true);
}

void Game::run()
{
  sf::Clock clock;
  bool resetGame = false;

  window_->setKeyRepeatEnabled(true);

  music_.play();

  while (window_->isOpen())
  {
    states_[*currentState_]->handleEvents();

    states_[*currentState_]->update(clock.restart());

    states_[*currentState_]->render();

    if (*currentState_ == State::StateID::GAME_OVER && !resetGame)
    {
      states_[State::StateID::GAME_OVER]->setScore(states_[State::StateID::PLAY]->getScore());
      states_[State::StateID::PLAY] = std::make_shared<GameState>(window_, currentState_);
      resetGame = true;
    }
    else if (resetGame && *currentState_ != State::StateID::GAME_OVER)
    {
      resetGame = false;
    }
  }
}
