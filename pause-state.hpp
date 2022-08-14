#ifndef PAUSE_STATE
#define PAUSE_STATE

#include <SFML/Window.hpp>
#include <SFML/Graphics.hpp>

#include "state.hpp"

class PauseState : public State
{
public:
  PauseState(std::shared_ptr<sf::RenderWindow> window, std::shared_ptr<State::StateID> stateUpdater);

  void handleEvents() override;
  void update(sf::Time deltaTime) override;
  void render() override;

private:
  sf::Text pause_;
};

#endif
