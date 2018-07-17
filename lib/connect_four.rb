require './lib/board'
require './lib/turn'

b = Board.new
t = Turn.new(b)

puts "Welcome to Connect Four"
# Maybe make a main class that contains all this game logic,
# will make replaying the game easier.
while b.game_over == false
  b.print_board
  t.player_turn
  if b.board_full?
    puts "It's a draw!"
    break
  else
  end
  t.computer_turn
  if b.board_full?
    puts "It's a draw!"
    break
  else
  end
end
