#include "state.hpp"

#include <memory>

#include <SFML/Window.hpp>
#include <SFML/Graphics.hpp>

State::State(std::shared_ptr<sf::RenderWindow> window, std::shared_ptr<State::StateID> stateUpdater) :
  score_(0)
{
  window_ = window;
  stateUpdater_ = stateUpdater;

  if (!backgroundTexture_.loadFromFile("../images/background.png"))
  {
    throw std::invalid_argument("error");
  }
  
  background_.setTexture(backgroundTexture_);

  if (!font_.loadFromFile("../fonts/zorque.ttf"))
  {
    throw std::runtime_error("Font loading error");
  }
}

int State::getScore()
{
  return score_;
}

void State::setScore(const int &score)
{
  score_ = score;
}
