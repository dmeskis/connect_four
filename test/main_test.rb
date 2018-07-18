require 'minitest/pride'
require 'minitest/autorun'
require './lib/main'
require './lib/board'
require './lib/turn'

class MainTest < Minitest::Test

  def test_it_exists
    board = Board.new
    turn = Turn.new
    main = Main.new(board, turn)

    assert_instance_of Main, main
  end

end
