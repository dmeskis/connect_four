class Board
  attr_reader :game_over, :column_key, :player_piece, :computer_piece
  attr_accessor :board
  def initialize
    @column_key   = ["A", "B", "C", "D", "E", "F", "G"]
    @board        = [[".", ".", ".", ".", ".", ".", "."],
                    [".", ".", ".", ".", ".", ".", "."],
                    [".", ".", ".", ".", ".", ".", "."],
                    [".", ".", ".", ".", ".", ".", "."],
                    [".", ".", ".", ".", ".", ".", "."],
                    [".", ".", ".", ".", ".", ".", "."]]
    @player_piece = "x"
    @computer_piece = "o"
    @game_over    = false
  end

  def print_board
    puts @column_key.join
    @board.each {|line| puts line.join}
  end

  def place_piece(placement, piece)
    board = @board.reverse
    board.map! do |line|
      if line[placement] == '.'
        line[placement] = piece
        break
      else
      end
    end
    @board
  end

  def board_full?
    @board[0].all? do |piece|
      piece != '.'
    end
  end

end
