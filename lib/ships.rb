class Ships

  attr_reader :length, :ship_location #:hash_chart
  def initialize(length, ship_location)
    @length = length
    @ship_location = ship_location
#     @hash_chart = {
#                     A1: A1,
#                     A2: A2,
#                     A3: A3,
#                     A4: A4,
#                     B1: B1,
#                     B2: B2,
#                     B3: B3,
#                     B4: B4,
#                     C1: C1,
#                     C2: C2,
#                     C3: C3,
#                     C4: C4,
#                     D1: D1,
#                     D2: D2,
#                     D3: D3,
#                     D4: D4
#                   }
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
