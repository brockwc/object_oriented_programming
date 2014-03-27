require './mars_rover2'

class Commander

  def create_rover(start)
    coords = start.split(" ")
    @rover = Rover.new(coords[0], coords[1], coords[2])
  end

  def move_rover(movements)
    movements.split("").each do |movement|
      if movement == "L"
        @rover.turn_left
      elsif movement == "R"
        @rover.turn_right
      elsif movement == "M"
        @rover.move
      end
    end
  end

  def display_rover
    puts @rover.to_s
  end

end

command = Commander.new
command.create_rover("1 2 N")
command.display_rover
command.move_rover("MMRMM")
command.display_rover
