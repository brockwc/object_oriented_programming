class Rover

  def initialize(x,y,d)
    @x = x.to_i
    @y = y.to_i
    @d = d
  end

  def move
    if @d == "N"
      @y += 1
    elsif @d == "E"
      @x += 1
    elsif @d == "S"
      @y -= 1
    else @d == "W"
      @x += 1
    end
  end 

  def to_s
    "#{@x}, #{@y}, #{@d}"
  end

  def turn_right
    if @d == "N"
      @d = "E"
    elsif @d == "E"
      @d = "S"
    elsif @d == "S"
      @d = "W"
    elsif @d == "W"
      @d = "N"
    end 
  end

  def turn_left
    if @d == "N"
      @d = "W"
    elsif @d == "W"
      @d = "S"
    elsif @d == "S"
      @d = "E"
    elsif @d == "E"
      @d = "N"
    end 
  end
end