#ifndef GAMEOVER_STATE
#define GAMEOVER_STATE

#include <memory>
#include <vector>

#include <SFML/Window.hpp>
#include <SFML/Graphics.hpp>

#include "state.hpp"
#include "asteroid.hpp"

class GameoverState : public State
{
public:
  GameoverState(std::shared_ptr<sf::RenderWindow> window, std::shared_ptr<State::StateID> stateUpdater);

  void handleEvents() override;
  void update(sf::Time deltaTime) override;
  void render() override;

private:
  sf::Text title_;
  sf::Text lastScore_;
  sf::Text play_;
  std::vector<std::shared_ptr<Asteroid>> asteroids_;
};

#endif
