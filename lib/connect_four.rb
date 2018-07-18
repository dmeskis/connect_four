require './lib/board'
require './lib/turn'
require './lib/main'

b = Board.new
t = Turn.new
m = Main.new(b, t)

puts "Welcome to Connect Four"
while m.game_over != true
  b.print_board
  m.player_turn
  b.print_board
  m.game_over?
  m.simulate_ai
  m.computer_turn
  m.game_over?
end
