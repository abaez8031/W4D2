require_relative "Piece"

class Board

  def initialize
    @grid = Array.new(8) { Array.new(8) }
  end

  def setup
    [0,1,6,7].each do |i|
      (0...@grid.length).each do |j|
        @grid[i][j] = Piece.new
      end
    end
  end

  def render
    puts @grid
  end


end