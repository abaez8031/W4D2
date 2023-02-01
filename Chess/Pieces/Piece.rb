require_relative "../Board"

class Piece
  attr_reader :position, :board, :color
  def initialize(color,board,position)
    @color = color
    @board = board
    @position = position
    self.board[position] = self
  end

  def valid_moves
    moves = []
    @board.each do |row|
      moves += row.select { |ele| ele == nil }
    end
    moves
  end

end

