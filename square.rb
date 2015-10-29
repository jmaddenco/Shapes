class Square

	def initialize top_right_x, top_right_y, color, side_lengths
    @x = top_right_x
    @y = top_right_y
    @c = color
    @l = side_lengths
    @z = 0
    @m = :default
  end

  def draw
  	Gosu.draw_line(@x, @y, @c, @x + @l, @y, @c, @z, @m)
  	Gosu.draw_line(@x, @y, @c, @x, @y + @l, @c, @z, @m)
  	Gosu.draw_line(@x + @l, @y, @c, @x + @l, @y + @l, @c, @z, @m)
  	Gosu.draw_line(@x, @y + @l, @c, @x + @l, @y + @l, @c, @z, @m)
  end

end
