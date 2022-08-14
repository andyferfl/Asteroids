#include "Bullet.hpp"

#include <cmath>

#include <SFML/Graphics.hpp>

#include "entity.hpp"
#include "constants.hpp"

const sf::Texture Bullet::BULLET_TEXTURE = Entity::loadTexture("../images/laser.png");
const float Bullet::BULLET_LIFE = 1.0f;
const float Bullet::BULLET_SPEED = 200.0f;

Bullet::Bullet(sf::Vector2f position, sf::Vector2f direction) :
  Entity(position, acos(direction.x) / DEG2RAD, BULLET_LIFE)
{
  direction_ = direction;

  if (direction_.y < 0)
  {
    angle_ *= -1;
  }

  sprite_.setTexture(BULLET_TEXTURE);
  sprite_.setOrigin(sprite_.getGlobalBounds().width / 2.0f, sprite_.getGlobalBounds().height / 2.0f);
  sprite_.setPosition(position_);
  sprite_.setScale(0.3f, 0.3f);
  sprite_.setRotation(angle_);
}

void Bullet::update(sf::Time deltaTime)
{
  sf::Vector2f distance = direction_ * deltaTime.asSeconds() * BULLET_SPEED;

  position_.x += distance.x;
  position_.y += distance.y;

  float radius = sprite_.getLocalBounds().width / 2.5;

  if (position_.x + radius < 0.0f || position_.x - radius > static_cast<float>(WIDTH) ||
      position_.y + radius < 0.0f || position_.y - radius > static_cast<float>(HEIGHT))
  {
    damage();
  }

  sprite_.setPosition(position_);
}
