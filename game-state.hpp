#ifndef GAME_STATE_HPP
#define GAME_STATE_HPP

#include <memory>
#include <vector>

#include <SFML/Window.hpp>
#include <SFML/Graphics.hpp>

#include "state.hpp"
#include "asteroid.hpp"
#include "spaceship.hpp"
#include "bullet.hpp"

class GameState : public State
{
public:
  GameState(std::shared_ptr<sf::RenderWindow> window, std::shared_ptr<State::StateID> stateUpdater);

  void handleEvents() override;
  void update(sf::Time deltaTime) override;
  void render() override;
  
private:
  float secondsSinceLastShot_;
  sf::Clock shotClock_;
  sf::Text showScore_;
  sf::Text showLife_;
  std::shared_ptr<Spaceship> player_;
  std::vector<std::shared_ptr<Bullet>> bullets_;
  std::vector<std::shared_ptr<Asteroid>> asteroids_;

  static const float SHOT_COOLDOWN;

  void collisions();
};

#endif
