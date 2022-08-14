#include "spaceship.hpp"

#include <SFML/Graphics.hpp>

#include "entity.hpp"
#include "constants.hpp"

const sf::Texture Spaceship::SPACESHIP_TEXTURE = Entity::loadTexture("../images/player.png");
const float Spaceship::ACCELERATION = 0.002f;
const float Spaceship::MAX_SPEED = 0.1f;
const float Spaceship::ROTATION_SPEED = 5.0f;
const float Spaceship::SPACESHIP_LIFE = 3.0f;

Spaceship::Spaceship() :
  Entity(sf::Vector2f(static_cast<float>(WIDTH) / 2.0f, static_cast<float>(HEIGHT) / 2.0f), 0.0f, SPACESHIP_LIFE),
  speed_(0.0f, 0.0f)
{
  sprite_.setTexture(SPACESHIP_TEXTURE);
  sprite_.setOrigin(sprite_.getGlobalBounds().width / 2.0f, sprite_.getGlobalBounds().height / 2.0f);
  sprite_.setPosition(position_);
  sprite_.setScale(0.15f, 0.15f);
}

void Spaceship::rotate(const float &direction)
{
  angle_ += direction * ROTATION_SPEED;
  direction_.x = cos(angle_ * DEG2RAD);
  direction_.y = sin(angle_ * DEG2RAD);
}

void Spaceship::move(const float &direction)
{
  speed_.x += (direction * ACCELERATION * direction_.x);
  speed_.y += (direction * ACCELERATION * direction_.y);

  if ((speed_.x * speed_.x) > (MAX_SPEED * MAX_SPEED))
  {
    speed_.x = (speed_.x > 0) ? MAX_SPEED : -MAX_SPEED;
  }
  if ((speed_.y * speed_.y) > (MAX_SPEED * MAX_SPEED))
  {
    speed_.y = (speed_.y > 0) ? MAX_SPEED : -MAX_SPEED;
  }
}

void Spaceship::update(sf::Time deltaTime)
{
  float radius = sprite_.getLocalBounds().width / 10.0;

  if (position_.x + radius < 0.0f)
  {
    position_.x = static_cast<float>(WIDTH) + radius;
    sprite_.setPosition(position_);
  }
  else if (position_.x - radius > static_cast<float>(WIDTH))
  {
    position_.x = 0.0f - radius;
    sprite_.setPosition(position_);
  }
  if (position_.y + radius < 0.0f)
  {
    position_.y = static_cast<float>(HEIGHT) + radius;
    sprite_.setPosition(position_);
  }
  else if (position_.y - radius > static_cast<float>(HEIGHT))
  {
    position_.y = 0.0f - radius;
    sprite_.setPosition(position_);
  }

  sprite_.move(speed_);
  sprite_.setRotation(angle_ + deltaTime.asSeconds());
  position_ = sprite_.getPosition();
}
