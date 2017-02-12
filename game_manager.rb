require 'gosu'
require_relative 'player'
# require_relative 'maps'
require_relative 'game'

class Game_manager(window)
  def initialize
    @window = window
    @player = Player.new(@window, 300, 20)
    @game = Game.new(@window, @player)
    @font = Gosu::Font.new(32)
    @start_time = Time.now.to_i
  end
  def button_dow(id)
    if id == Gosu::KbEscape
      self.end
    else
     @game.button_down(id)
    end
  end
end
