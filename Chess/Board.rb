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

  def [](position)
    x, y = position
    @grid[x][y]
  end

  def []=(position, value)
    x, y = position
    @grid[x][y] = value
  end

  def move_piece(start_pos, end_pos)
    start_x, start_y = start_pos
    end_x, end_y = end_pos
    raise "No piece at start position" if !valid_pos?(start_pos) || @grid[start_x][start_y] == nil
    raise "Cannot move to end position" if !valid_pos?(end_pos) || @grid[end_x][end_y] != nil
    piece = @grid[start_x][start_y]
    @grid[end_x][end_y] = piece
    @grid[start_x][start_y] = nil
  end

  def valid_pos?(position)
    x, y = position
    return true if x >= 0 && x < 8 && y >= 0 && y < 8 
    false
  end


end