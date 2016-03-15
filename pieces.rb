class Piece

  attr_reader :color

  def initialize(color = :White)
    @color = color
  end

  def inspect
    "#{@color} #{self.class}"
  end

  def valid_move?
  end
end

class EmptySpace < Piece

  def initialize(color = "")
  end

  def move
  end

  def valid_move?
  end
end
