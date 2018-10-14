require './test/test_helper.rb'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/game_boards'
require 'pry'

class GameBoardsTest < Minitest::Test

  def test_computer_generates_random_coordinate_for_destroyer_head
    computer_destroyer = Game_Boards.new
    computer_destroyer.computer_place_destroyer
    coordinates_array = computer_destroyer.hash_chart.keys
    random_coord = coordinates_array.sample
    assert_equal true, coordinates_array.include?(random_coord)
  end

  def test_computer_places_destroyer
    computer_destroyer = Game_Boards.new
    computer_destroyer.computer_place_destroyer
    coordinates_array = computer_destroyer.hash_chart.keys
    random_coord = coordinates_array.sample
    assert_equal 3, computer_destroyer.hash_chart.values.count {|value| value.include?("S")}
  end

end
