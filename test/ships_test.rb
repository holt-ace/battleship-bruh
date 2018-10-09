require 'minitest/autorun'
require 'minitest/pride'
require './lib/ships'

class ShipsTest
  def setup
    @destroyer = Ships.new(3,[B2, D1])
  end

  def test_if_destroyer_is_placed

    assert_equal [B2, D1], @destroyer.place_ships
  end
end
