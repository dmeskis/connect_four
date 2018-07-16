class Board
  attr_reader :game_over, :board, :column_key
  def initialize
    @column_key   = ["A", "B", "C", "D", "E", "F", "G"]
    @board        = [[".", ".", ".", ".", ".", ".", "."],
                    [".", ".", ".", ".", ".", ".", "."],
                    [".", ".", ".", ".", ".", ".", "."],
                    [".", ".", ".", ".", ".", ".", "."],
                    [".", ".", ".", ".", ".", ".", "."],
                    [".", ".", ".", ".", ".", ".", "."]]
    @game_over    = false
  end

  def print_board
    puts @column_key.join
    @board.each {|line| puts line.join}
  end

end
