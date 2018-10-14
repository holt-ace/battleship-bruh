require './test/test_helper.rb'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/ships'

class ShipsTest < Minitest::Test


  def test_if_ships_exist #done
    destroyer = Ships.new
    canoe = Ships.new
    assert_instance_of Ships, destroyer
    assert_instance_of Ships, canoe
  end

  def test_ships_have_correct_length
    computer_ships = Ships.new
    computer_ships.computer_place_destroyer
    computer_ships.computer_place_canoe
    assert_equal 3, computer_ships.computer_destroyer.flatten.length
    assert_equal 2, computer_ships.computer_canoe.flatten.length #DEMON BUG
  end

  def test_computer_generates_random_coordinate_for_ship_heads
    computer_ships = Ships.new
    computer_ships.computer_place_destroyer
    coordinates_array = computer_ships.computer_board.keys
    random_coord = coordinates_array.sample
    assert_equal true, coordinates_array.include?(random_coord)

  end

  def test_computer_places_destroyer
    computer_ships = Ships.new
    computer_ships.computer_place_destroyer
    coordinates_array = computer_ships.computer_board.keys
    random_coord = coordinates_array.sample
    assert_equal 3, computer_ships.computer_board.values.count {|value| value.include?("S")}
  end


  def test_computer_places_canoe
    skip
    computer_ships = Ships.new
    computer_ships.computer_place_canoe
    coordinates_array = computer_ships.computer_board.keys
    random_coord = coordinates_array.sample
  end

  def test_computer_ships_dont_stack
    skip
    computer_canoe = Ships.new
    computer_canoe.computer_place_canoe
    coordinates_array = computer_ships.

  end
  end
end
