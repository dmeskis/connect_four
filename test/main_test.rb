require 'minitest/pride'
require 'minitest/autorun'
require './lib/main'

class MainTest < Minitest::Test

  def test_it_exists
    main = Main.new

    assert_instance_of Main, main
  end

end
