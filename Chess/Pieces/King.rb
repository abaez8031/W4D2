require_relative "Piece"
require_relative "Stepable"

class King < Piece
  include Stepable

  def symbol
    "♔"
  end

  protected

  def move_diffs
    moves = [
      [1,1],
      [1,0],
      [1,-1],
      [0,-1],
      [0,1],
      [-1,1],
      [-1,0],
      [-1,-1]
    ]
  end

end