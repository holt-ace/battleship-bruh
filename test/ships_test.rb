
require 'minitest/autorun'
require 'minitest/pride'
require './lib/ships'

class ShipsTest < Minitest::Test
  def setup
    @destroyer = Ships.new(3, ["A1", "A2", "A3"])
  end

  def test_if_destroyer_exists

    assert_instance_of Ships, @destroyer
  end

  # def test_if_the_destroyer_is_placed
  #
  #   assert_equal ["A1", "A2", "A3"], @destroyer.position
  # end

  def test_that_the_player_has_placed_destroyer

    assert_equal ["A1", "A2", "A3"], @destroyer.place_ships
  end
end
