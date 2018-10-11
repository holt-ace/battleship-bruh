require './test/test_helper.rb'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/ships'

class ShipsTest < Minitest::Test
  def setup
    @destroyer = Ships.new(3, [:A1, :A3])
    @canoe = Ships.new(2, [:D3, :D4])
  end

  def test_if_ships_exists
    assert_instance_of Ships, @canoe
    assert_instance_of Ships, @destroyer
  end

  def test_the_ships_have_correct_length
    assert_equal 3, @destroyer.length
    assert_equal 2, @canoe.length

  end

  def test_if_the_destroyer_is_placed
    assert_equal [:A1, :A3], @destroyer.ship_location
    assert_equal [:D3, :D4], @canoe.ship_location
  end
end
