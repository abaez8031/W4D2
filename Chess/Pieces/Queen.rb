require_relative 'Piece'
require_relative 'Slideable'

class Queen < Piece
  include Slideable
  

  def symbol
    '♛'
  end

  protected

  def move_dirs
    # return the directions in which a queen can move
    # a queen can move horizontally (across rows and columns) and diagonally
    horizontal_dirs + diagonal_dirs
  end
end