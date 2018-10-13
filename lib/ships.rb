require './lib/game_boards'

class Ships

  attr_reader :length, :ship_location #:hash_chart
  def initialize(length, ship_location)
    @length = length
    @ship_location = ship_location
#
  end

  
#   def place_ships
#     puts "Prepare for battle! Place your DESTROYER."
#     print "> "
#     slot_1 = $stdin.gets.chomp
#       if slot_1 == A1..D4
#         @ship_location << slot_1
#       end
#     slot_2 = $stdin.gets.chomp
#       if slot_2 == A1..D4 && slot_2.include? != slot_1 #prevents ship stacking
#         @ship_location << slot_2
#       end
#     @ship_location

#   end

end
