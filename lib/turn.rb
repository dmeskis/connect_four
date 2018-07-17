# require './lib/board.rb'

class Turn

  def initialize
    # @board = board
    @valid_user_inputs = ['A','B','C','D','E','F','G']
  end

  def input_valid?(input)
    @valid_user_inputs.include?(input)
  end

  def get_user_input
    print "> "
    input = gets.chomp
    if input_valid?(input)
      input
    else
      puts "Please enter a valid letter"
      get_user_input
    end
  end

  def user_input_to_index(input)
    @valid_user_inputs.find_index(input)
  end

  # def computer_turn
  #   move = rand(0..6)
  #   if @board.valid_move?(move)
  #     @board.place_piece(move, @board.computer_piece)
  #   else
  #     computer_turn
  #   end
  # end

  # def player_turn
  #   move = user_input_to_index(get_user_input)
  #   if @board.valid_move?(move)
  #     @board.place_piece(move, @board.player_piece)
  #   else
  #     puts "Invalid move, make a valid play."
  #     player_turn
  #   end
  # end


end
