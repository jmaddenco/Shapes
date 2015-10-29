require "gosu"

class Square

	def initialize top_right_corner_x_coordinate, top_right_corner_y_coordinate, side_length
		@x = top_right_corner_x_coordinate
		@y = top_right_corner_y_coordinate
		@l = side_length
		@z = 0
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
		Gosu.draw_line(@x, @y, @oc, @x + @l, @y, @oc, @z, @m)
		Gosu.draw_line(@x, @y, @oc, @x, @y + @l, @oc, @z, @m)
		Gosu.draw_line(@x + @l, @y + @l, @oc, @x + @l, @y, @oc, @z, @m)
		Gosu.draw_line(@x + @l, @y + @l, @oc, @x, @y + @l, @oc, @z, @m)
		for i in (1)...(@l)
			Gosu.draw_line(@x, @y + i, @fc, @x + @l - 1, @y + i, @fc, @z, @m)
		end
	end

end