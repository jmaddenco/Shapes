require "gosu"

class Triangle

	def initialize top_x_coordinate, top_y_coordinate, side_length
		@x = top_x_coordinate
		@y = top_y_coordinate
		@l = side_length
		@z = 1
		@m = :default
		
		@oc = Gosu::Color.new(0xff_000000)
		@oc.red = rand(256 - 40) + 40
		@oc.green = rand(256 - 40) + 40
		@oc.blue = rand(256 - 40) + 40
	
		@fc = Gosu::Color.new(0xff_000000)
		@fc.red = rand(256 - 40) + 40
		@fc.green = rand(256 - 40) + 40
		@fc.blue = rand(256 - 40) + 40
	end

	def draw
		Gosu.draw_line(@x, @y, @oc, @x + @l*(Math.sin(Math::PI/6)), @y + @l*(Math.cos(Math::PI/6)), @oc, @z, @m)
		Gosu.draw_line(@x, @y, @oc, @x + @l*(Math.sin(Math::PI/-6)), @y + @l*(Math.cos(Math::PI/-6)), @oc, @z, @m)
		Gosu.draw_line(@x + @l*(Math.sin(Math::PI/6)), @y + @l*(Math.cos(Math::PI/6)), @oc, @x + @l*(Math.sin(Math::PI/-6)), @y + @l*(Math.cos(Math::PI/-6)), @oc, @z, @m)
		for i in (1)..(@l*(Math.cos(Math::PI/6)))
			Gosu.draw_line(@x, @y + i, @fc, @x + i*(Math.tan(Math::PI/6)) - 1, @y + i, @fc, @z, @m)
		 	Gosu.draw_line(@x, @y + i, @fc, @x + i*(Math.tan(Math::PI/-6)), @y + i, @fc, @z, @m)
		end
	end
end