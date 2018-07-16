require './lib/board'
require './lib/turn'

t = Turn.new
b = Board.new

puts "Welcome to Connect Four"

while b.game_over == false
  b.print_board
  user_input = t.get_user_input
  user_input_index = t.user_input_to_index(user_input)
  b.place_piece(user_input_index, b.player_piece)
end
