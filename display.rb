PIECES = {
  WhiteKing: "\u2654",
  WhiteQueen: "\u2655",
  WhiteRook: "\u2656",
  WhiteBishop: "\u2657",
  WhiteKnight: "\u2658",
  WhitePawn: "\u2659",
  BlackKing: "\u265A",
  BlackQueen: "\u265B",
  BlackRook: "\u265C",
  BlackBishop: "\u265D",
  BlackKnight: "\u265E",
  BlackPawn: "\u265F",

  EmptySpace: ""
}


# WHITE = {
#   King: "\u2654",
#   Queen: "\u2655",
#   Rook: "\u2656",
#   Bishop: "\u2657",
#   Knight: "\u2658",
#   Pawn: "\u2659",
#   EmptySpace: "|_|"
# }
# BLACK = {
#   King: "\u265A",
#   Queen: "\u265B",
#   Rook: "\u265C",
#   Bishop: "\u265D",
#   Knight: "\u265E",
#   Pawn: "\u265F"
# }

class Display

  def initialize(grid)
    @grid = grid
  end

  def map_board
    @grid.each do |row|
      row.map do |tile|
        [tile.color, tile.class]
      end
    end
  end

  def display_board
    @grid.each do |row|
      display_row = []
      row.map do |tile|
        key = tile.color.to_s + tile.class.to_s
        display_row << PIECES[key.to_sym]
      end
      puts display_row.join("  ")
      puts "______________________"
    end

  end



end
