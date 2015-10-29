require 'gosu'
# require_relative 'rectangle'
# require_relative 'triangle'
require_relative 'square'

class GameWindow < Gosu::Window

  def initialize
    super 640, 480
    self.caption = "shapes"
    @square1 = Square.new(12, 20, 0xff_ffff00, 25)
  end

  def update
  
  end

  def draw
   @square1.draw
  end

  def button_down id
    close if id == Gosu::KbEscape
  end

end

window = GameWindow.new
window.show