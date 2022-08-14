#ifndef ASTEROID_HPP
#define ASTEROID_HPP

#include <map>
#include <array>

#include <SFML/Graphics.hpp>

#include "entity.hpp"

class Asteroid: public Entity
{
public:
  enum class Size
  {
    SMALL,
    MEDIUM,
    BIG
  };

  Asteroid();
  Asteroid(sf::Vector2f position, float angle, Asteroid::Size size);

  Size getSize();
  
  void update(sf::Time deltatime) override;

private:
  Size size_;
  float speed_;

  static std::map<Size, float> setSpeedMap();
  static std::map<Size, std::array<sf::Texture, 8>> setTextureMap();

  static const float ASTEROID_LIFE;
  static const std::map<Size, float> ASTEROID_SPEED_MAP;
  static const std::map<Size, std::array<sf::Texture, 8>> ASTEROID_TEXTURE_MAP;
};

#endif
