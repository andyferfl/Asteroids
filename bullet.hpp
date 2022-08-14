#ifndef BULLET_HPP
#define BULLET_HPP

#include <SFML/Graphics.hpp>

#include "entity.hpp"

class Bullet: public Entity
{
public:
  Bullet(sf::Vector2f position, sf::Vector2f direction);

  void update(sf::Time deltatime) override;

private:
  static const sf::Texture BULLET_TEXTURE;
  static const float BULLET_LIFE;
  static const float BULLET_SPEED;
};

#endif
