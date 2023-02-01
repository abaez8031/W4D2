require_relative "../Board"

class Piece
  attr_reader :position, :board
  def initialize(color,board,position)
    @color = color
    @board = board
    @position = position
  end

  def valid_moves
    moves = []
    @board.each do |row|
      moves += row.select { |ele| ele == nil }
    end
    moves
  end

end

