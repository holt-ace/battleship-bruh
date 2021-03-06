require './lib/game_boards'
require 'pry'

class Ships
  attr_accessor :board_1, :computer_board, :computer_destroyer, :computer_canoe, :random_coord
  def initialize
    @board_1 = GameBoards.new
    @board_2 = GameBoards.new
    @computer_board = @board_1.hash_chart
    @player_board = @board_2.hash_chart
    @computer_destroyer = []
    @computer_canoe = []
    coordinates_array = @computer_board.keys
    @random_coord = coordinates_array.sample
  end

  def options_maker_horizontal(letter, sign_of_one, number, ship_length) #fully functional
    options = []
    ship_length.times do |index|
      updated_num = number.to_i + (sign_of_one * index)
      options << letter + updated_num.to_s
    end
    options
  end

  def options_maker_vertical(letter, sign_of_one, number, ship_length)
    options = []
    alphabet = [*'A'..'Z']
    ship_length.times do |index|
      updated_letter = alphabet[alphabet.find_index(letter) + (sign_of_one * index)]
      options << updated_letter + number.to_s
    end
    options
  end

  def create_orientations(coordinate, ship_length)
    right = options_maker_horizontal(coordinate[0], 1, coordinate[1], ship_length)
    left = options_maker_horizontal(coordinate[0], -1, coordinate[1], ship_length)
    down = options_maker_vertical(coordinate[0], 1, coordinate[1], ship_length)
    up = options_maker_vertical(coordinate[0], -1, coordinate[1], ship_length)
    orientations = [right, left, down, up]
    orientations
  end

  def keys_to_strings
    coordinates_array = [:A1, :A2, :A3, :A4, :B1, :B2, :B3, :B4, :C1, :C2, :C3, :C4, :D1, :D2, :D3, :D4]
    keys_as_strings = coordinates_array.map do |x|
      x.to_s
    end
    keys_as_strings
  end

  def validate_canoe_orientations(orientations)
    keys_to_strings
    verified_coords = []
    orientations.each do |element|
      element.each do |x|
        if keys_to_strings.include?(x) == false
          orientations.delete(element)
        end
      end
      prevent_stacking
    end
    orientations
  end

  def validate_orientations(orientations)
    keys_to_strings
    verified_coords = []
    orientations.each do |element|
      element.each do |x|
        if keys_to_strings.include?(x) == false
          orientations.delete(element)
        end
      end
    end
    orientations
  end

  def computer_place_destroyer
    comp_destroyer_pos = validate_orientations(create_orientations(@random_coord, 3)).sample
    @computer_board[comp_destroyer_pos[0].to_sym] = "S"
    @computer_board[comp_destroyer_pos[1].to_sym] = "S"
    @computer_board[comp_destroyer_pos[2].to_sym] = "S"
    @computer_destroyer << comp_destroyer_pos
    puts "I have placed my destroyer, which is #{comp_destroyer_pos.length} units long."
  end

  def prevent_stacking
    perfect = @computer_canoe.none? {|coord| @computer_destroyer.include?(coord)}
    if perfect
      computer_place_canoe
    end
  end

  def computer_place_canoe
    comp_canoe_pos = validate_orientations(create_orientations(@random_coord, 2)).sample
    if @computer_board.values_at(comp_canoe_pos[0]) == "S" || @computer_board.values_at(comp_canoe_pos[1]) == "S"
      computer_place_canoe
      return
    else
      @computer_board[comp_canoe_pos[0].to_sym] = "S"
      @computer_board[comp_canoe_pos[1].to_sym] = "S"
      @computer_canoe << comp_canoe_pos
    end
    puts "I have placed my canoe, which is #{comp_canoe_pos.length} units long."
    sleep(3)
    puts "=" * 40
  end

###################################################################################
  def player_place_canoe
    puts "YOUR TURN! Time to layout your two ships."
    puts "The first is two units long (your Canoe) \nand the second is three units long (your Destroyer)."
    puts "The grid is 4x4 and has A1 \nin the top left and D4 in the bottom right."
    sleep(3)
    puts "Enter the coordinates for the two-unit ship seperated by a space."
    puts "Example Entry: 'A1 A2'"
    print "> "
    player_canoe_entry = $stdin.gets.chomp #A1 D18
    symbol_array = player_canoe_entry.split(" ").map { |coordinate_key| coordinate_key.to_sym }
      #this method ^^^ replces this:

      # canoe_coordinates_array = player_canoe_entry.split
      # symbol_array = canoe_coordinates_array.map do |coordinate_key|
      #   coordinate_key.to_sym #
      #   # binding.pry
      # end
      puts "Unfortunately, your ship sunk instantly. Place your destroyer. This is your last chance."
      sleep(4)
    # if @player_board.keys.include?(symbol_array[0]) == true && @player_board.keys.include?(symbol_array[1]) == true && symbol_array.length == 2
    #   validated_ship_positions(player_canoe_entry, 2)
    #   @computer_canoe << comp_canoe_pos
    #   puts "I have placed my canoe, which is #{@computer_canoe.flatten.length} units long."
    #   sleep(3)
    #   puts "Your CANOE has been placed. Too bad I can't see it!"
      return @player_board[symbol_array[0]] = "S", @player_board[symbol_array[1]] = "S"
    # else
    #   puts "INVALID INPUT. PLEASE TRY AGAIN!"
    #   sleep(2)
    #   return player_place_canoe
    # end
  end

  def player_place_destroyer
    puts "Now enter the coordinates for the 3 unit ship seperated by spaces."
    puts "Example Entry: 'C2 C3 C4'"
    print "> "
    player_destroyer_entry = $stdin.gets.chomp
    symbol_array = player_destroyer_entry.split(" ").map { |coordinate_key| coordinate_key.to_sym }
    #this method ^^^ replces this:

    # destroyer_coordinates_array = player_destroyer_entry.split(" ")
    # symbol_array = destroyer_coordinates_array.map do |coordinate_key|
    #   coordinate_key.to_sym
    # end
    #if they enter anything that doesnt match the exact format, recurse
    # if @player_board.keys.include?(symbol_array[0]) == true && @player_board.keys.include?(symbol_array[1]) == true && @player_board.keys.include?(symbol_array[2]) && symbol_array.length == 3
    #   # validated_ship_positions(player_destroyer_entry, 3)
    #   puts "Your DESTROYER has been placed. Too bad I can't see it!"
      return @player_board[symbol_array[0]] = "S", @player_board[symbol_array[1]] = "S", @player_board[symbol_array[2]] = "S"
    # else
    #   puts "INVALID INPUT. PLEASE ENTER COORDINATES AS SUCH: C2 C3 C4"
    #   sleep(2)
    #   return player_place_destroyer
    # end
    puts "The destroyer imploded."
    unintentional_introduction
  end

end
