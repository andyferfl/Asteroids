#include "entity.hpp"

#include <string>

#include <SFML/Graphics.hpp>

#include "constants.hpp"

Entity::Entity()
{
}

Entity::Entity(sf::Vector2f position, float angle, float remainingLife) :
  angle_(angle),
  position_(position),
  direction_(cos(angle * DEG2RAD), sin(angle * DEG2RAD)),
  remainingLife_(remainingLife)
{
}

bool Entity::isAlive()
{
  return (remainingLife_ > 0.0f);
}

sf::FloatRect Entity::getBounds()
{
  return sprite_.getGlobalBounds();
}

sf::Vector2f Entity::getPosition()
{
  return position_;
}

sf::Vector2f Entity::getDirection()
{
  return direction_;
}

float Entity::getRemainingLife()
{
  return remainingLife_;
}

float Entity::getAngle()
{
  return angle_;
}

void Entity::damage()
{
  remainingLife_ -= 1.0f;
}

void Entity::draw(sf::RenderTarget &target, sf::RenderStates states) const
{
  target.draw(sprite_, states);
}

sf::Texture Entity::loadTexture(const std::string &path)
{
  sf::Texture texture;

  if (!texture.loadFromFile(path))
  {
    throw std::runtime_error("Error loading texture");
  }

  return texture;
}
