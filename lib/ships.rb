require 'pry'
class Ships
  attr_reader :length, :positions
  def initialize(length, positions)
    @length = length
    @positions = []
  end



  def place_ships
    slot_1 = [@positions.first]
    slot_2 = [@positions.last]
    # slot_1 = [:key]
    # slot_2 = [:value]
    slots = [slot_1, slot_2]
    puts slots
    # @positions << slots
    # @positions
  end
  # binding.pry
end
