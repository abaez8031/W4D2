require_relative 'Piece'
require_relative 'Slideable'

class Bishop < Piece
  include Slideable

  def symbol
    '♝'
  end

  protected

  def move_dirs
    # return the directions in which a bishop can move
    # a bishop can move diagonally
    diagonal_dirs
  end
end
