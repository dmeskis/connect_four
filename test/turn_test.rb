require 'minitest/pride'
require 'minitest/autorun'
require './lib/turn'

class TurnTest < Minitest::Test

  def test_it_exists
    turn = Turn.new
    assert_instance_of Turn, turn
  end

  def test_we_can_get_user_input
    turn = Turn.new
    puts "Type A for get user input test"
    result = turn.get_user_input
    expected = "A"

    assert_equal expected, result
  end

  def test_we_can_validify_input
    turn = Turn.new
    input_1 = "A"
    input_2 = "B"
    input_3 = "Z"

    assert turn.input_valid?(input_1)
    assert turn.input_valid?(input_2)
    refute turn.input_valid?(input_3)
  end

  def test_we_can_get_the_index_of_user_input
    turn = Turn.new
    expected = 4
    result = turn.user_input_to_index("E")

    assert_equal expected, result
  end

end
