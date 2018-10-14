class Turn
  attr_accessor :hash_chart
  def initialize

  end

  def player_attack
    def player_place_destroyer
      puts "Enter the coordinate for an attack!"
      puts "Example Entry: 'D4'"
      print "> "
      player_destroyer_entry = $stdin.gets.chomp
      destroyer_coordinates_array = player_destroyer_entry.split(" ")
      symbol_array = destroyer_coordinates_array.map do |coordinate_key|
        coordinate_key.to_sym
      end

      return @player_board[symbol_array[0]] = "S"

    end
  end

  def player_computer

  end
end
