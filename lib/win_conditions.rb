module WinConditions

  def horizontal_win(b)
    if (b[0][0..3].uniq.length == 1 && b[0][0..3].any? {|piece| piece != '.'}) ||
       (b[1][0..3].uniq.length == 1 && b[1][0..3].any? {|piece| piece != '.'}) ||
       (b[2][0..3].uniq.length == 1 && b[2][0..3].any? {|piece| piece != '.'}) ||
       (b[3][0..3].uniq.length == 1 && b[3][0..3].any? {|piece| piece != '.'}) ||
       (b[4][0..3].uniq.length == 1 && b[4][0..3].any? {|piece| piece != '.'}) ||
       (b[5][0..3].uniq.length == 1 && b[5][0..3].any? {|piece| piece != '.'}) ||
       (b[0][1..4].uniq.length == 1 && b[0][1..4].any? {|piece| piece != '.'}) ||
       (b[1][1..4].uniq.length == 1 && b[1][1..4].any? {|piece| piece != '.'}) ||
       (b[2][1..4].uniq.length == 1 && b[2][1..4].any? {|piece| piece != '.'}) ||
       (b[3][1..4].uniq.length == 1 && b[3][1..4].any? {|piece| piece != '.'}) ||
       (b[4][1..4].uniq.length == 1 && b[4][1..4].any? {|piece| piece != '.'}) ||
       (b[5][1..4].uniq.length == 1 && b[5][1..4].any? {|piece| piece != '.'}) ||
       (b[0][2..5].uniq.length == 1 && b[0][2..5].any? {|piece| piece != '.'}) ||
       (b[1][2..5].uniq.length == 1 && b[1][2..5].any? {|piece| piece != '.'}) ||
       (b[2][2..5].uniq.length == 1 && b[2][2..5].any? {|piece| piece != '.'}) ||
       (b[3][2..5].uniq.length == 1 && b[3][2..5].any? {|piece| piece != '.'}) ||
       (b[4][2..5].uniq.length == 1 && b[4][2..5].any? {|piece| piece != '.'}) ||
       (b[5][2..5].uniq.length == 1 && b[5][2..5].any? {|piece| piece != '.'}) ||
       (b[0][3..6].uniq.length == 1 && b[0][3..6].any? {|piece| piece != '.'}) ||
       (b[1][3..6].uniq.length == 1 && b[1][3..6].any? {|piece| piece != '.'}) ||
       (b[2][3..6].uniq.length == 1 && b[2][3..6].any? {|piece| piece != '.'}) ||
       (b[3][3..6].uniq.length == 1 && b[3][3..6].any? {|piece| piece != '.'}) ||
       (b[4][3..6].uniq.length == 1 && b[4][3..6].any? {|piece| piece != '.'}) ||
       (b[5][3..6].uniq.length == 1 && b[5][3..6].any? {|piece| piece != '.'})
        true
      else
        false
    end
  end

  def vertical_win(b)
    if ([b[0][0], b[1][0], b[2][0], b[3][0]].uniq.length == 1) && (b[0][0] != '.') ||
       ([b[1][0], b[2][0], b[3][0], b[4][0]].uniq.length == 1) && (b[1][0] != '.') ||
       ([b[2][0], b[3][0], b[4][0], b[5][0]].uniq.length == 1) && (b[2][0] != '.') ||
       ([b[0][1], b[1][1], b[2][1], b[3][1]].uniq.length == 1) && (b[0][1] != '.') ||
       ([b[1][1], b[2][1], b[3][1], b[4][1]].uniq.length == 1) && (b[1][1] != '.') ||
       ([b[2][1], b[3][1], b[4][1], b[5][1]].uniq.length == 1) && (b[2][1] != '.') ||
       ([b[0][2], b[3][2], b[4][2], b[5][2]].uniq.length == 1) && (b[0][2] != '.') ||
       ([b[1][2], b[3][2], b[4][2], b[5][2]].uniq.length == 1) && (b[1][2] != '.') ||
       ([b[2][2], b[3][2], b[4][2], b[5][2]].uniq.length == 1) && (b[2][2] != '.') ||
       ([b[0][3], b[3][3], b[4][3], b[5][3]].uniq.length == 1) && (b[0][3] != '.') ||
       ([b[1][3], b[3][3], b[4][3], b[5][3]].uniq.length == 1) && (b[1][3] != '.') ||
       ([b[2][3], b[3][3], b[4][3], b[5][3]].uniq.length == 1) && (b[2][3] != '.') ||
       ([b[0][4], b[3][4], b[4][4], b[5][4]].uniq.length == 1) && (b[0][4] != '.') ||
       ([b[1][4], b[3][4], b[4][4], b[5][4]].uniq.length == 1) && (b[1][4] != '.') ||
       ([b[2][4], b[3][4], b[4][4], b[5][4]].uniq.length == 1) && (b[2][4] != '.') ||
       ([b[0][5], b[3][5], b[4][5], b[5][5]].uniq.length == 1) && (b[0][5] != '.') ||
       ([b[1][5], b[3][5], b[4][5], b[5][5]].uniq.length == 1) && (b[1][5] != '.') ||
       ([b[2][5], b[3][5], b[4][5], b[5][5]].uniq.length == 1) && (b[2][5] != '.') ||
       ([b[0][6], b[3][6], b[4][6], b[5][6]].uniq.length == 1) && (b[0][6] != '.') ||
       ([b[1][6], b[3][6], b[4][6], b[5][6]].uniq.length == 1) && (b[1][6] != '.') ||
       ([b[2][6], b[3][6], b[4][6], b[5][6]].uniq.length == 1) && (b[2][6] != '.')
        true
      else
        false
      end
    end

    def diagonal_win(b)
      if ([b[0][0], b[1][1], b[2][2], b[3][3]].uniq.length == 1) && (b[0][0] != '.') ||
         ([b[0][1], b[1][2], b[2][3], b[3][4]].uniq.length == 1) && (b[0][1] != '.') ||
         ([b[0][2], b[1][3], b[2][4], b[3][5]].uniq.length == 1) && (b[0][2] != '.') ||
         ([b[0][3], b[1][4], b[2][5], b[3][6]].uniq.length == 1) && (b[0][3] != '.') ||
         ([b[1][0], b[2][1], b[3][2], b[4][3]].uniq.length == 1) && (b[1][0] != '.') ||
         ([b[1][1], b[2][2], b[3][3], b[4][4]].uniq.length == 1) && (b[1][1] != '.') ||
         ([b[1][2], b[2][3], b[3][4], b[4][5]].uniq.length == 1) && (b[1][2] != '.') ||
         ([b[1][3], b[2][4], b[3][5], b[4][6]].uniq.length == 1) && (b[1][3] != '.') ||
         ([b[2][0], b[3][1], b[4][2], b[5][3]].uniq.length == 1) && (b[2][0] != '.') ||
         ([b[2][1], b[3][2], b[4][3], b[5][4]].uniq.length == 1) && (b[2][1] != '.') ||
         ([b[2][2], b[3][3], b[4][4], b[5][5]].uniq.length == 1) && (b[2][2] != '.') ||
         ([b[2][3], b[3][4], b[4][5], b[5][6]].uniq.length == 1) && (b[2][3] != '.') ||
         ([b[0][3], b[1][2], b[2][1], b[3][0]].uniq.length == 1) && (b[0][3] != '.') ||
         ([b[0][4], b[1][3], b[2][2], b[3][1]].uniq.length == 1) && (b[0][4] != '.') ||
         ([b[0][5], b[1][4], b[2][3], b[3][2]].uniq.length == 1) && (b[0][5] != '.') ||
         ([b[0][6], b[1][5], b[2][4], b[3][3]].uniq.length == 1) && (b[0][6] != '.') ||
         ([b[1][3], b[2][2], b[3][1], b[4][0]].uniq.length == 1) && (b[1][3] != '.') ||
         ([b[1][4], b[2][3], b[3][2], b[4][1]].uniq.length == 1) && (b[1][4] != '.') ||
         ([b[1][5], b[2][4], b[3][3], b[4][2]].uniq.length == 1) && (b[1][5] != '.') ||
         ([b[1][6], b[2][5], b[3][4], b[4][3]].uniq.length == 1) && (b[1][6] != '.') ||
         ([b[2][3], b[3][2], b[4][1], b[5][0]].uniq.length == 1) && (b[2][3] != '.') ||
         ([b[2][4], b[3][3], b[4][2], b[5][1]].uniq.length == 1) && (b[2][4] != '.') ||
         ([b[2][5], b[3][4], b[4][3], b[5][2]].uniq.length == 1) && (b[2][5] != '.') ||
         ([b[2][6], b[3][5], b[4][4], b[5][3]].uniq.length == 1) && (b[2][6] != '.')
         true
       else
         false
       end
    end

# Test ways to condense win condition
      # def horizontal_win?
      #   @board.each do |line|
      #     0.upto(3) do |x|
      #         require 'pry' ; binding.pry
      #         if (line[x..x+3].uniq.length == 1) && (line[x..x+3].all? {|piece| piece != '.'})
      #           @game_over = true
      #         else
      #         end
      #       end
      #     end
      # end




end
