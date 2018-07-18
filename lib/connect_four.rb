require './lib/board'
require './lib/turn'
require './lib/main'

b = Board.new
t = Turn.new
m = Main.new(b, t)

puts "Welcome to Connect Four"
# Maybe make a main class that contains all this game logic,
# will make replaying the game easier.
while m.game_over != false
  b.print_board
  m.player_turn
  m.game_over?
  # Add a pause, where it prints out thinking... to simulate
  # actual AI XD
  m.computer_turn
  m.game_over?
end
