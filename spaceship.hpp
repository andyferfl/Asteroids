#ifndef SPACESHIP_HPP
#define SPACESHIP_HPP

#include <SFML/Graphics.hpp>

#include "entity.hpp"

class Spaceship : public Entity
{
public:
  Spaceship();

  void rotate(const float &direction);
  void move(const float &direction);

  void update(sf::Time deltatime) override;
private:
  sf::Vector2f speed_;

  static const sf::Texture SPACESHIP_TEXTURE;
  static const float ACCELERATION;
  static const float MAX_SPEED;
  static const float ROTATION_SPEED;
  static const float SPACESHIP_LIFE;
};

#endif
