require './test/test_helper.rb'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/ships'

class ShipsTest < Minitest::Test


  def test_if_ships_exist #done
    skip
    destroyer = Ships.new
    canoe = Ships.new
    assert_instance_of Ships, destroyer
    assert_instance_of Ships, canoe
  end

  def test_ships_have_correct_length
    skip
    computer_ships = Ships.new
    computer_ships.computer_place_destroyer
    computer_ships.computer_place_canoe
    assert_equal 3, computer_ships.computer_destroyer.flatten.length
    assert_equal 2, computer_ships.computer_canoe.flatten.length
  end

  def test_computer_generates_random_coordinate_for_ship_heads
    skip
    computer_ships = Ships.new
    computer_ships.computer_place_destroyer
    coordinates_array = computer_ships.computer_board.keys
    random_coord = coordinates_array.sample
    assert_equal true, coordinates_array.include?(random_coord)
  end

  def test_computer_places_destroyer
    skip
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
    computer_canoe = Ships.new
    computer_canoe.computer_place_canoe
    coordinates_array = computer_ships.computer_board.keys
    random-coord = coordinates_array.sample
    
  end

  def test_does_options_horizontal_method_return_all_horizontal_orientations
    computer_ships = Ships.new
    assert_equal ["A1", "A2"], computer_ships.options_maker_horizontal("A", 1, "1", 2)
    assert_equal ["A1", "A0"], computer_ships.options_maker_horizontal("A", -1, "1", 2)
    assert_equal ["A1", "A2", "A3"], computer_ships.options_maker_horizontal("A", 1, "1", 3)
    assert_equal ["A1", "A0", "A-1"], computer_ships.options_maker_horizontal("A", -1, "1", 3)

  end

  def test_does_options_vertical_method_return_all_vertical_orientations
    computer_ships = Ships.new
    assert_equal ["A1", "B1"], computer_ships.options_maker_vertical("A", 1, "1", 2)
    assert_equal ["A1", "Z1"], computer_ships.options_maker_vertical("A", -1, "1", 2)
    assert_equal ["A1", "B1", "C1"], computer_ships.options_maker_vertical("A", 1, "1", 3)
    assert_equal ["A1", "Z1", "Y1"], computer_ships.options_maker_vertical("A", -1, "1", 3)
  end

  def test_where_can_ship_go_stores_orientations
    computer_ships = Ships.new
    assert_equal ["A1", "A2", "A1", "A0", "A1", "B1", "A1", "Z1"], computer_ships.where_can_ship_go("A1", 2)
    assert_equal ["A1", "A2", "A3", "A1", "A0", "A-1", "A1", "B1", "C1", "A1", "Z1", "Y1"], computer_ships.where_can_ship_go("A1", 3)
  end


end
