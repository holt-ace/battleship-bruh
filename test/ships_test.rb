require './test/test_helper.rb'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/ships'

class ShipsTest < Minitest::Test
  def setup

    @destroyer = Ships.new(3, [:A1, :A2, :A3])
    @canoe = Ships.new(2, [:D3, :D4])
  end

  def test_if_destroyer_exists

    assert_instance_of Ships, @destroyer
  end

  def test_if_the_destroyer_is_placed

    assert_equal ["A1", "A2", "A3"], @destroyer.position
  end

  # def test_that_the_player_has_placed_destroyer
  #
  #   assert_equal ["A1", "A2", "A3"], @destroyer.place_ships
  # end


  # test the input if needed later.
  # def simulate_stdin(*inputs)
  #   io = StringIO.new
  #   inputs.flatten.each { |str| io.puts(str) }
  #   io.rewind
  #
  #   actual_stdin = $stdin
  #   $stdin = io
  #   yield
  # ensure
  #   $stdin = actual_stdin
# end

end
