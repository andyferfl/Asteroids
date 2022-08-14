#include "asteroid.hpp"

#include <map>
#include <array>

#include <SFML/Graphics.hpp>

#include "entity.hpp"
#include "constants.hpp"

const float Asteroid::ASTEROID_LIFE = 1.0f;
const std::map<Asteroid::Size, float> Asteroid::ASTEROID_SPEED_MAP = Asteroid::setSpeedMap();
const std::map<Asteroid::Size, std::array<sf::Texture, 8>> Asteroid::ASTEROID_TEXTURE_MAP = Asteroid::setTextureMap();

Asteroid::Asteroid() :
  Entity(sf::Vector2f(0.0f, static_cast<float>(rand() % HEIGHT)), 
        static_cast<float>(rand() % 360), ASTEROID_LIFE),
  size_(Size::BIG)
{
  speed_ = ASTEROID_SPEED_MAP.at(size_);

  sprite_.setTexture(ASTEROID_TEXTURE_MAP.at(size_).at(rand() % 7));
  sprite_.setPosition(position_);
  sprite_.setOrigin((sprite_.getLocalBounds().width / 2.0f), (sprite_.getLocalBounds().height / 2.0f));
}

Asteroid::Asteroid(sf::Vector2f position, float angle, Asteroid::Size size) :
  Entity (position, angle, 1.0f),
  size_(size)
{
  speed_ = ASTEROID_SPEED_MAP.at(size_);

  sprite_.setTexture(ASTEROID_TEXTURE_MAP.at(size_).at(rand() % 7));
  sprite_.setPosition(position_);
  sprite_.setOrigin((sprite_.getLocalBounds().width / 2.0f), (sprite_.getLocalBounds().height / 2.0f));
}

Asteroid::Size Asteroid::getSize()
{
  return size_;
}

void Asteroid::update(sf::Time deltaTime)
{
  sf::Vector2f distance = direction_ * deltaTime.asSeconds() * speed_;

  position_.x += distance.x;
  position_.y += distance.y;

  float radius = sprite_.getLocalBounds().width / 2.5;

  if (position_.x + radius < 0.0f)
  {
    position_.x = static_cast<float>(WIDTH) + radius;
  }
  else if (position_.x - radius > static_cast<float>(WIDTH))
  {
    position_.x = 0.0f - radius;
  }
  if (position_.y + radius < 0.0f)
  {
    position_.y = static_cast<float>(HEIGHT) + radius;
  }
  else if (position_.y - radius > static_cast<float>(HEIGHT))
  {
    position_.y = 0.0f - radius;
  }

  sprite_.setPosition(position_);
  sprite_.rotate(0.01f + deltaTime.asSeconds());
}

std::map<Asteroid::Size, float> Asteroid::setSpeedMap()
{
  std::map<Asteroid::Size, float> map;

  map[Asteroid::Size::BIG] = 40.0f;
  map[Asteroid::Size::MEDIUM] = 60.0f;
  map[Asteroid::Size::SMALL] = 80.0f;

  return map;
}

std::map<Asteroid::Size, std::array<sf::Texture, 8>> Asteroid::setTextureMap()
{
  std::string path;
  std::array<sf::Texture, 8> bigArray;

  for (int i = 0; i < 8; ++i)
  {
    path = "../images/big";
    path.append(std::to_string(i));
    path.append(".png");
    bigArray[i] = Entity::loadTexture(path);
  }

  std::array<sf::Texture, 8> mediumArray;

  for (int i = 0; i < 8; ++i)
  {
    path = "../images/medium";
    path.append(std::to_string(i));
    path.append(".png");
    mediumArray[i] = Entity::loadTexture(path);
  }

  std::array<sf::Texture, 8> smallArray;

  for (int i = 0; i < 8; ++i)
  {
    path = "../images/small";
    path.append(std::to_string(i));
    path.append(".png");
    smallArray[i] = Entity::loadTexture(path);
  }

  std::map<Asteroid::Size, std::array<sf::Texture, 8>> map;

  map[Asteroid::Size::BIG] = bigArray;
  map[Asteroid::Size::MEDIUM] = mediumArray;
  map[Asteroid::Size::SMALL] = smallArray;

  return map;
}
