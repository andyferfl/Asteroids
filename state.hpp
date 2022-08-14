#ifndef STATE_HPP
#define STATE_HPP

#include <memory>

#include <SFML/Window.hpp>
#include <SFML/Graphics.hpp>

class State
{
public:
  enum class StateID
  {
    MENU,
    PLAY,
    PAUSE,
    GAME_OVER
  };

  State(std::shared_ptr<sf::RenderWindow> window, std::shared_ptr<State::StateID> stateUpdater);
  int getScore();
  void setScore(const int &score);

  virtual void handleEvents() = 0;
  virtual void update(sf::Time deltaTime) = 0;
  virtual void render() = 0;

protected:
  int score_;
  std::shared_ptr<sf::RenderWindow> window_;
  std::shared_ptr<State::StateID> stateUpdater_;
  sf::Font font_;
  sf::Texture backgroundTexture_;
  sf::Sprite background_;
};

#endif
