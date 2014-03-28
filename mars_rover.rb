 class Commander

  def initialize
    puts "Enter grid as x,y"
    grid = gets.chomp
    grid = grid.split(',')
    @grid_x = grid[0]
    @grid_y = grid[1]
  end

end

class Rover
  
  def initialize(x,y,d)
    puts "Enter Rover start position (x,y) and direction (d) as x,y,d:"
    pos = gets.chomp
    pos = pos.split(',')
    @x = pos[0]
    @y = pos[1]
    @d = pos[2]
  end

end
