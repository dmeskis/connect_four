require './lib/board.rb'
require './lib/turn.rb'

class Main
  attr_reader :board, :turn, :game_over

  def initialize(board, turn)
    @board = board
    @turn = turn
    @game_over == false
  end

  def computer_turn
    move = rand(0..6)
    if @board.valid_move?(move)
      @board.place_piece(move, @board.computer_piece)
    else
      computer_turn
    end
  end

  def player_turn
    move = @turn.user_input_to_index(@turn.get_user_input)
    if @board.valid_move?(move)
      @board.place_piece(move, @board.player_piece)
    else
      puts "Invalid move, make a valid play."
      player_turn
    end
  end

  def game_over?
    if @board.horizontal_win(@board.board)
      puts "Winner!"
      play_again?
    elsif @board.vertical_win(@board.board)
      puts "Winner!"
      play_again?
    elsif @board.board_full?
      play_again?
    end
  end

  def play_again?
    puts "Would you like to play again? (yes/no)"
    response = gets.chomp.downcase
    if response == "yes"
      @board.reset_board
    elsif response == "no"
      puts "Hope you enjoyed Connect Four!"
      exit
    else
      puts "Please type 'yes' or 'no'."
      play_again?
    end
  end

end
