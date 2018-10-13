class Ships

  attr_reader :length, :ship_location
  def initialize(length, ship_location)
    @length = length
    @ship_location = ship_location
  end

  def places_destroyer
    puts "Prepare for battle! Place your DESTROYER."
    print "> "
    destroyer_coordinates_entry = $stdin.gets.chomp
    # break string into seperate symbol array
    destroyer_coordinates_array = destroyer_coordinates_entry.split
    #iterate throuugh the array and change each element to a symbol
    symbol_array = destroyer_coordinates_array.map do |key|
      # `a.map{|x|x.to_sym}`
      key.to_sym
    end
    #return hash_chart changes
    @hashchart[symbol_array] = "S"
  end

end
