# Square run game
# By Benjamin A.
# started 2-13-2017
# made with ruby library gosu
require 'gosu'
require_relative 'game-manager'

class Square_Run < Gosu::Window
  def initialize
    super(600, 800) #creates window
    self.caption = "  Square Run"
    @game = Game_manager.new(self)
  end
  def end
    self = nil
  end
  def update
    @game.update
  end
  def draw
    @game.draw
  end
  def button_down(id)
    @game.button_down(id)
  end
end

window = Square_run.new.show #opens game window
