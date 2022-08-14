#include "menu-state.hpp"

#include <memory>
#include <vector>

#include <SFML/Window.hpp>
#include <SFML/Graphics.hpp>

#include "state.hpp"
#include "asteroid.hpp"

MenuState::MenuState(std::shared_ptr<sf::RenderWindow> window, std::shared_ptr<State::StateID> stateUpdater) : 
  State(window, stateUpdater)
{
  sf::Vector2u windowSize = window_->getSize();

  title_.setString("Asteroids");
  title_.setFont(font_);
  title_.setFillColor(sf::Color::Magenta);
  title_.setCharacterSize(70);
  title_.setOrigin((title_.getLocalBounds().width / 2.0f), (title_.getLocalBounds().height / 2.0f));
  title_.setPosition(windowSize.x / 2.0f, windowSize.y / 3.0f);

  play_.setString("Play");
  play_.setFont(font_);
  play_.setFillColor(sf::Color::Cyan);
  play_.setCharacterSize(50);
  play_.setPosition(windowSize.x / 2.0f, windowSize.y / 2.0f);
  play_.setOrigin((play_.getLocalBounds().width / 2.0f), (play_.getLocalBounds().height / 2.0f));

  for (int i = 0; i < 15; i++)
  {
    asteroids_.push_back(std::make_shared<Asteroid>());
  }
}

void MenuState::handleEvents()
{
  sf::Event event;
  while (window_->pollEvent(event))
  {
    if (event.type == sf::Event::EventType::Closed)
    {
      window_->close();
    }
    if (event.type == sf::Event::EventType::MouseButtonReleased && event.mouseButton.button == sf::Mouse::Left)
    {
      if (play_.getGlobalBounds().contains(event.mouseButton.x, event.mouseButton.y))
      {
        *stateUpdater_ = StateID::PLAY;
      }
    }
  }
}

void MenuState::update(sf::Time deltaTime)
{
  for (auto a : asteroids_)
  {
    a->update(deltaTime);
  }
}

void MenuState::render()
{
  
  window_->clear();

  window_->draw(background_);

  for (auto a : asteroids_)
  {
    window_->draw(*a);
  }

  window_->draw(title_);
  window_->draw(play_);
  window_->display();
}
