require 'minitest/autorun'
require 'minitest/pride'
require './lib/ships'

class ShipsTest < Minitest::Test
  def setup
    @destroyer = Ships.new(3, ["B2", "D1"])
  end

  def test_if_destroyer_exists
    assert_instance_of Ships, @destroyer
  end

  def test_if_destroyer_is_placed
    assert_equal ["B2", "D1"], @destroyer.place_ships
  end


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
