module Stepable

  def moves
    moves_arr = []
    self.move_diffs.each do |move_diff|
      x,y = self.position 
      dx,dy = move_diff
      finalx = dx + x
      finaly = dy + y
      final_pos = [finalx,finaly]
      moves_arr << [finalx,finaly] if self.board.valid_pos?([finalx,finaly]) && board[final_pos] == nil
    end
    moves_arr
  end

  private

  def move_diffs
    raise NotImplementedError
  end





end