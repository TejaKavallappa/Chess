class Board

  attr_reader :grid

  def initialize
    @grid = Array.new(8) {Array.new(8)}
    populate
  end

  def [](pos)
    x, y = pos
    @grid[x][y]
  end

  def []=(pos, value)
    x, y = pos
    @grid[x][y] = value
  end

  def move(start, end_pos)
    piece = @grid[start]
    @grid[end_pos] = piece if piece.valid_move?
    @grid[start] = EmptySpace.new
  end

  private
  def populate
    populate_black_back_row
    populate_black_pawns
    populate_white_back_row
    populate_white_pawns
    populate_empty_space
  end

  def back_row(color = :White)
    [Rook.new(color),
    Knight.new(color),
    Bishop.new(color),
    King.new(color),
    Queen.new(color),
    Bishop.new(color),
    Knight.new(color),
    Rook.new(color)]
  end

  def populate_black_back_row
    @grid[0] = back_row(:Black).reverse

  end

  def populate_white_back_row
    @grid[7] = back_row

  end

  def populate_black_pawns
    @grid[1].map! {|tile| Pawn.new(:Black)}
  end

  def populate_white_pawns
    @grid[6].map! {|tile| Pawn.new}
  end

  def populate_empty_space
    (2..5).each do |i|
      @grid[i].map! {|tile| EmptySpace.new}
    end
  end

end
