require './mars_rover2'

class Commander

  def initialize
    puts "Enter grid size (x y):"
    grid = gets.chomp
    grid = grid.split(" ")
    @grid_x = grid[0]
    @grid_y = grid[1]
    create_rover
  end

  def create_rover
    puts "Add a starting position and direction (N E S W) for the rover (x,y,d):"
    create = gets.chomp
    coords = create.split(" ")
    @rover = Rover.new(coords[0], coords[1], coords[2])
    move_rover
  end

  def move_rover
    puts "Using 'L' for a left turn, 'R' for a right turn and 'M' to move, send the rover a set of directions:"
    movements = gets.chomp
    movements.split("").each do |movement|
      puts movement.inspect
      if movement == "L"
        @rover.turn_left
      elsif movement == "R"
        @rover.turn_right
      elsif movement == "M"
        @rover.move
      end
    end
    display_rover
  end

  def display_rover
    puts @rover.to_s
    #puts "Deploy another? Y/N"
  end

end

command = Commander.new
# command.create_rover
# command.move_rover
# command.create_rover
# command.move_rover
# command.display_rover
# command.display_rover
