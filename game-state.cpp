#include "game-state.hpp"

#include <memory>
#include <vector>
#include <string>

#include <SFML/Window.hpp>
#include <SFML/Graphics.hpp>

#include "constants.hpp"
#include "state.hpp"
#include "asteroid.hpp"
#include "spaceship.hpp"
#include "bullet.hpp"

const float GameState::SHOT_COOLDOWN = 0.001f;

GameState::GameState(std::shared_ptr<sf::RenderWindow> window, std::shared_ptr<State::StateID> stateUpdater) :
  State(window, stateUpdater),
  secondsSinceLastShot_(0.0f),
  player_(std::make_shared<Spaceship>())
{
  sf::Vector2u windowSize = window_->getSize();

  showScore_.setString(std::to_string(score_));
  showScore_.setFont(font_);
  showScore_.setFillColor(sf::Color::Cyan);
  showScore_.setCharacterSize(40);
  showScore_.setPosition(0.0f , 0.0f);

  showLife_.setString(std::to_string(static_cast<int>(player_->getRemainingLife())));
  showLife_.setFont(font_);
  showLife_.setFillColor(sf::Color::Cyan);
  showLife_.setCharacterSize(40);
  showLife_.setPosition(WIDTH / 2.0f, 0.0f);

  bullets_.reserve(200);
  asteroids_.reserve(10);

  for (int i = 0; i < 10; ++i)
  {
    asteroids_.push_back(std::make_shared<Asteroid>());
  }
}

void GameState::handleEvents()
{
  sf::Event event;
  sf::Time elapsedTime = shotClock_.restart();

  while (window_->pollEvent(event))
  {
    if (event.type == sf::Event::EventType::Closed)
    {
      window_->close();
    }
    if (sf::Keyboard::isKeyPressed(sf::Keyboard::A) || sf::Keyboard::isKeyPressed(sf::Keyboard::Left))
    {
      player_->rotate(-1.0f);
    }
    if (sf::Keyboard::isKeyPressed(sf::Keyboard::D) || sf::Keyboard::isKeyPressed(sf::Keyboard::Right))
    {
      player_->rotate(1.0f);
    }
    if (sf::Keyboard::isKeyPressed(sf::Keyboard::W) || sf::Keyboard::isKeyPressed(sf::Keyboard::Up))
    {
      player_->move(1.0f);
    }
    if (sf::Keyboard::isKeyPressed(sf::Keyboard::S) || sf::Keyboard::isKeyPressed(sf::Keyboard::Down))
    {
      player_->move(-1.0f);
    }
    if (event.type == sf::Event::EventType::KeyPressed && sf::Keyboard::isKeyPressed(sf::Keyboard::Space))
    {
      secondsSinceLastShot_ += elapsedTime.asSeconds();

      if (secondsSinceLastShot_ >= SHOT_COOLDOWN)
      {
        sf::Vector2f pos = player_->getPosition();
        sf::Vector2f distance = player_->getDirection() * 40.0f;
        pos.x += distance.x;
        pos.y += distance.y;
        bullets_.emplace_back(std::make_shared<Bullet>(pos, player_->getDirection()));
        secondsSinceLastShot_ = 0.0f;
      }
    }
    if (sf::Keyboard::isKeyPressed(sf::Keyboard::P) || sf::Keyboard::isKeyPressed(sf::Keyboard::Enter))
    {
      *stateUpdater_ = State::StateID::PAUSE;
    }
  }
}

void GameState::update(sf::Time deltaTime)
{
  collisions();

  player_->update(deltaTime);

  for (auto i = bullets_.begin(); i != bullets_.end(); ++i)
  {
    if ((*i)->isAlive())
    {
      (*i)->update(deltaTime);
    }
    else
    {
      bullets_.erase(i);
      i--;
    }
  }

  for (auto i = asteroids_.begin(); i != asteroids_.end(); ++i)
  {
    if ((*i)->isAlive())
    {
      (*i)->update(deltaTime);
    }
    else
    {
      asteroids_.erase(i);
      i--;
    }
  }

  if (asteroids_.size() == 0)
  {
    for (int i = 0; i < 10; ++i)
    {
      asteroids_.push_back(std::make_shared<Asteroid>());
    }
  }

  showScore_.setString(std::to_string(score_));
  showLife_.setString(std::to_string(static_cast<int>(player_->getRemainingLife())));

  if (!player_->isAlive())
  {
    *stateUpdater_ = State::StateID::GAME_OVER;
  }
}

void GameState::render()
{
  window_->clear();

  window_->draw(background_);

  window_->draw(*player_);

  for (auto i : asteroids_)
  {
    window_->draw(*i);
  }

  for (auto i : bullets_)
  {
    window_->draw(*i);
  }

  window_->draw(showScore_);
  window_->draw(showLife_);

  window_->display();
}

void GameState::collisions()
{
  Asteroid::Size size;
  sf::Vector2f pos;
  float ang;
  bool collision = false;

  for (auto i = asteroids_.begin(); i != asteroids_.end(); ++i)
  {
    sf::FloatRect asteroidRect = (*i)->getBounds();
    asteroidRect.height -= 13.0f;
    asteroidRect.width -= 13.0f;

    for (auto j = bullets_.begin(); j != bullets_.end(); ++j)
    {
      if (asteroidRect.intersects((*j)->getBounds()))
      {
        (*i)->damage();
        (*j)->damage();

        if ((*i)->getSize() != Asteroid::Size::SMALL)
        {
          if ((*i)->getSize() == Asteroid::Size::BIG)
          {
            size = Asteroid::Size::MEDIUM;
            score_ += 20;
          }
          else
          {
            size = Asteroid::Size::SMALL;
            score_ += 50;
          }

          pos = (*i)->getPosition();
          ang = (*i)->getAngle();
          collision = true;
        }
        else
        {
          score_ += 100;
        }
      }
    }
    if (asteroidRect.intersects(player_->getBounds()))
    {
      (*i)->damage();
      player_->damage();

      if ((*i)->getSize() != Asteroid::Size::SMALL)
      {
        size = ((*i)->getSize() == Asteroid::Size::BIG) ? Asteroid::Size::MEDIUM : Asteroid::Size::SMALL;
        pos = (*i)->getPosition();
        ang = (*i)->getAngle();
        collision = true;
      }
    }
  }

  if (collision)
  {
    ang += 60.0f;
    asteroids_.emplace_back(std::make_shared<Asteroid>(pos, ang, size));
    ang -= 60.0f;
    asteroids_.emplace_back(std::make_shared<Asteroid>(pos, ang, size));
  }
}
