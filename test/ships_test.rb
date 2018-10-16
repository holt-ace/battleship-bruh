require './test/test_helper.rb'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/ships'

class ShipsTest < Minitest::Test


  def test_if_ships_exist
    destroyer = Ships.new
    canoe = Ships.new
    assert_instance_of Ships, destroyer
    assert_instance_of Ships, canoe
  end

  def test_does_options_maker_horizontal_return_all_horizontal_orientations
    computer_ships = Ships.new
    assert_equal ["A1", "A2"], computer_ships.options_maker_horizontal("A", 1, "1", 2)
    assert_equal ["A1", "A0"], computer_ships.options_maker_horizontal("A", -1, "1", 2)
    assert_equal ["A1", "A2", "A3"], computer_ships.options_maker_horizontal("A", 1, "1", 3)
    assert_equal ["A1", "A0", "A-1"], computer_ships.options_maker_horizontal("A", -1, "1", 3)

  end

  def test_does_options_maker_vertical_return_all_vertical_orientations
    computer_ships = Ships.new
    assert_equal ["A1", "B1"], computer_ships.options_maker_vertical("A", 1, "1", 2)
    assert_equal ["A1", "Z1"], computer_ships.options_maker_vertical("A", -1, "1", 2)
    assert_equal ["A1", "B1", "C1"], computer_ships.options_maker_vertical("A", 1, "1", 3)
    assert_equal ["A1", "Z1", "Y1"], computer_ships.options_maker_vertical("A", -1, "1", 3)
  end

  def test_orientations_are_stored
    computer_ships = Ships.new
    assert_equal [["A1", "A2"], ["A1", "A0"], ["A1", "B1"], ["A1", "Z1"]], computer_ships.create_orientations("A1", 2)
    assert_equal [["A1", "A2", "A3"], ["A1", "A0", "A-1"], ["A1", "B1", "C1"], ["A1", "Z1", "Y1"]], computer_ships.create_orientations("A1", 3)
  end

  def test_it_validates_orientations
    computer_ships = Ships.new
    orientations = computer_ships.create_orientations("A1", 2)
    assert_equal [["A1", "A2"], ["A1", "B1"]], computer_ships.validate_canoe_orientations(orientations)
  end

  def test_it_places_ships_randomly_meeting_all_spec_rules
    computer_ships = Ships.new
    computer_ships.computer_place_destroyer
    computer_ships.computer_place_canoe
    assert_equal true, computer_ships.computer_board.values.count("S") == 5
  end

end
