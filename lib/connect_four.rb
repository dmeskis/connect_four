require './lib/board'
require './lib/turn'
require './lib/main'

b = Board.new
t = Turn.new
m = Main.new(b, t)

puts "Welcome to Connect Four"
while m.game_over != false
  b.print_board
  m.player_turn
  b.print_board
  m.game_over?
  m.computer_turn
  b.print_board
  m.game_over?
end
