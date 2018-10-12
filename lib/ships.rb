class Ships

  attr_reader :length, :ship_location
  def initialize(length, ship_location)
    @length = length
    @ship_location = ship_location
  end

  def places_destroyer
    puts "Prepare for battle! Place your DESTROYER."
    print "> "
    entry = $stdin.gets.chomp
    #break string into seperate symbols
    #.split
    #iterate throuugh the array and change each element to a symbol
    # `a.map{|x|x.to_sym}`
    #return hash_chart changes

  end

end
