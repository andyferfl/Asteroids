#ifndef ENTITY_HPP
#define ENTITY_HPP

#include <string>

#include <SFML/Graphics.hpp>

class Entity : public sf::Drawable
{
public:
  Entity();
  Entity(sf::Vector2f position, float angle, float remainingLife);

  bool isAlive();
  sf::FloatRect getBounds();
  sf::Vector2f getPosition();
  sf::Vector2f getDirection();
  float getRemainingLife();
  float getAngle();
  void damage();
  
  void draw(sf::RenderTarget &target, sf::RenderStates states) const override;

  virtual void update(sf::Time frametime) = 0;

protected:
  float remainingLife_;
  float angle_;
  sf::Vector2f position_;
  sf::Vector2f direction_;
  sf::Sprite sprite_;

  static sf::Texture loadTexture(const std::string &path);
};

#endif
