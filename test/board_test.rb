require 'minitest/pride'
require 'minitest/autorun'
require './lib/board.rb'

class BoardTest < Minitest::Test

  def test_it_exists
    board = Board.new
    assert_instance_of Board, board
  end

  def test_game_does_not_start_completed
    board = Board.new
    refute board.game_over
  end

  def test_it_has_a_column_index
    board = Board.new
    expected = ["A", "B", "C", "D", "E", "F", "G"]
    result = board.column_key

    assert_equal expected, result
  end

  def test_it_starts_with_an_empty_board
    board = Board.new
    result = board.board.all? do |line|
      line == [".", ".", ".", ".", ".", ".", "."]
    end
    assert result
  end

  def test_it_can_print_out_board
    board = Board.new
    expected = [[".", ".", ".", ".", ".", ".", "."],
                [".", ".", ".", ".", ".", ".", "."],
                [".", ".", ".", ".", ".", ".", "."],
                [".", ".", ".", ".", ".", ".", "."],
                [".", ".", ".", ".", ".", ".", "."],
                [".", ".", ".", ".", ".", ".", "."]]
    result = board.print_board

    assert_equal expected, result
  end

  def test_we_can_place_a_piece
    board = Board.new
    expected = [[".", ".", ".", ".", ".", ".", "."],
                [".", ".", ".", ".", ".", ".", "."],
                [".", ".", ".", ".", ".", ".", "."],
                [".", ".", ".", ".", ".", ".", "."],
                [".", ".", ".", ".", "o", ".", "."],
                [".", ".", ".", ".", "x", ".", "."]]
    board.place_piece(4, board.player_piece)
    board.place_piece(4, board.computer_piece)

    assert_equal expected, board.board
  end

  def test_if_board_is_full
    # Rewrite this test to have another assertion
    board = Board.new
    refute board.board_full?
  end

  def test_we_can_check_if_valid_move
    # Rewrite this test to have another assertion
    board = Board.new
    assert board.valid_move?(5)
  end

  def test_we_can_check_for_horizontal_win
    board = Board.new

    assert horizontal_win
  end

  end

end
