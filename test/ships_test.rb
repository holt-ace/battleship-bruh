require './test/test_helper.rb'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/ships'

class ShipsTest < Minitest::Test
  def setup
    @destroyer = Ships.new
    @canoe = Ships.new
  end

  def test_if_ships_exists
    assert_instance_of Ships, @canoe
    assert_instance_of Ships, @destroyer
  end

  def test_the_ships_have_correct_length
    assert_equal 3, @destroyer.length
    assert_equal 2, @canoe.length

  end

  def test_computer_generates_random_coordinate_for_ship_heads
    computer_ships = Game_Boards.new
    computer_ships.computer_place_destroyer
    coordinates_array = computer_ships.hash_chart.keys
    random_coord = coordinates_array.sample
    assert_equal true, coordinates_array.include?(random_coord)

  end

  def test_computer_places_destroyer
    computer_ships = Game_Boards.new
    computer_ships.computer_place_destroyer
    coordinates_array = computer_ships.hash_chart.keys
    random_coord = coordinates_array.sample
    assert_equal 3, computer_ships.hash_chart.values.count {|value| value.include?("S")}
  end


  def test_computer_places_canoe
    computer_ships = Game_Boards.new
    computer_ships.computer_place_canoe
    coordinates_array = computer_ships.hash_chart.keys
    random_coord = coordinates_array.sample
  end

  def test_computer_ships_dont_stack
    computer_canoe = Game_Boards.new
    computer_canoe.computer_place_canoe
    coordinates_array = computer_ships.

  end
  end
end
