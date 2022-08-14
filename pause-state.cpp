#include "pause-state.hpp"

#include <SFML/Window.hpp>
#include <SFML/Graphics.hpp>

#include "state.hpp"

PauseState::PauseState(std::shared_ptr<sf::RenderWindow> window, std::shared_ptr<State::StateID> stateUpdater) : State(window, stateUpdater)
{
  sf::Vector2u windowSize = window_->getSize();

  pause_.setString("Pause");
  pause_.setFont(font_);
  pause_.setFillColor(sf::Color::Magenta);
  pause_.setCharacterSize(70);
  pause_.setOrigin((pause_.getLocalBounds().width / 2.0f), (pause_.getLocalBounds().height / 2.0f));
  pause_.setPosition(windowSize.x / 2.0f, windowSize.y / 2.0f);
}

void PauseState::handleEvents()
{
  sf::Event event;
  while (window_->pollEvent(event))
  {
    if (event.type == sf::Event::EventType::Closed)
    {
      window_->close();
    }
    if (sf::Keyboard::isKeyPressed(sf::Keyboard::P) || sf::Keyboard::isKeyPressed(sf::Keyboard::Enter))
    {
      *stateUpdater_ = StateID::PLAY;
    }
  }
}

void PauseState::update(sf::Time deltaTime)
{
}

void PauseState::render()
{

  window_->clear();

  window_->draw(background_);

  window_->draw(pause_);
  window_->display();
}