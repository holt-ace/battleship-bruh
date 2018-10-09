require 'pry'
class Ships
  attr_reader :length, :position
  def initialize(length, _position)
    @length = length
    @position = { x: a, y: b }
  end

  def position_to_array
    @position.to_a
  end
  binding.pry
end
