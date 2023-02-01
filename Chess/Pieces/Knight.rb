require_relative "Piece"
require_relative "Stepable"

class Knight < Piece
  include Stepable

  def symbol
    "♘"
  end

  protected

  def move_diffs
    moves = [
      [2,1],
      [2,-1],
      [-2,1],
      [-2,-1],
      [1,2],
      [1,-2],
      [-1,2],
      [-1,-2]
    ]
  end

end