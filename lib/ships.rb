require './lib/game_boards'
require 'pry'

class Ships
  attr_accessor :board_1, :computer_board, :computer_destroyer, :computer_canoe
  def initialize
    @board_1 = GameBoards.new
    @board_2 = GameBoards.new
    @computer_board = @board_1.hash_chart
    @player_board = @board_2.hash_chart
    @computer_destroyer = []
    @computer_canoe = []
  end

  def computer_place_destroyer
    coordinates_array = @computer_board.keys # [:A1, :A2, :A3, :A4, :B1, :B2, :B3, :B4, :C1, :C2, :C3, :C4, :D1, :D2, :D3, :D4]
    random_coord = coordinates_array.sample
    where_can_ship_go(random_coord, 3)
    @computer_board[comp_destroyer_pos[0]] = "S"
    @computer_board[comp_destroyer_pos[1]] = "S"
    @computer_board[comp_destroyer_pos[2]] = "S"
    @computer_destroyer << comp_destroyer_pos
    puts "I have placed my destroyer, which is #{@computer_destroyer.flatten.length} units long."
  end

  def computer_place_canoe
    coordinates_array = @computer_board.keys # [:A1, :A2, :A3, :A4, :B1, :B2, :B3, :B4, :C1, :C2, :C3, :C4, :D1, :D2, :D3, :D4]
    random_coord = coordinates_array.sample
    where_can_ship_go(random_coord, 2)
    if @computer_board[random_coord] == "S"
      computer_place_canoe
      return
    elsif @computer_board[random_coord] != "S"

      @computer_board[comp_canoe_pos[0]] = "S"
      @computer_board[comp_canoe_pos[1]] = "S"
      @computer_canoe << comp_canoe_pos
    puts "I have placed my canoe, which is #{@computer_canoe.flatten.length} units long."
    sleep(3)
    puts "========================================"
    end
  end

###################################################################################
  def player_place_canoe
    puts "YOUR TURN! Time to layout your two ships."
    puts "The first is two units long \nand the second is three units long."
    puts "The grid is 4x4 and has A1 \nin the top left and D4 in the bottom right."
    sleep(3)
    puts "Enter the coordinates for the two-unit ship seperated by a space."
    puts "Example Entry: 'A1 A2'"
    print "> "
    player_canoe_entry = $stdin.gets.chomp #A1 D18
      canoe_coordinates_array = player_canoe_entry.split
      symbol_array = canoe_coordinates_array.map do |coordinate_key|
        coordinate_key.to_sym #
        # binding.pry
      end
    if @player_board.keys.include?(symbol_array[0]) == true && @player_board.keys.include?(symbol_array[1]) == true && symbol_array.length == 2
      where_can_ship_go(player_canoe_entry, 2)
      @computer_canoe << comp_canoe_pos
      puts "I have placed my canoe, which is #{@computer_canoe.flatten.length} units long."
      sleep(3)
      return @player_board[symbol_array[0]] = "S", @player_board[symbol_array[1]] = "S"
      sleep(0.5)
      puts "Your CANOE has been placed. Too bad I can't see it!"
    else
      puts "INVALID INPUT. PLEASE TRY AGAIN!"
      sleep(2)
      return player_place_canoe
    end
  end

  def player_place_destroyer
    puts "Now enter the coordinates for the 3 unit ship seperated by spaces."
    puts "Example Entry: 'C2 C3 C4'"
    print "> "
    player_destroyer_entry = $stdin.gets.chomp
    destroyer_coordinates_array = player_destroyer_entry.split(" ")
    symbol_array = destroyer_coordinates_array.map do |coordinate_key|
      coordinate_key.to_sym
    end
    #if they enter anything that doesnt match the exact format, recurse
    if @player_board.keys.include?(symbol_array[0]) == true && @player_board.keys.include?(symbol_array[1]) == true && @player_board.keys.include?(symbol_array[2]) && symbol_array.length == 3
      where_can_ship_go(player_destroyer_entry, 3)
      return @player_board[symbol_array[0]] = "S", @player_board[symbol_array[1]] = "S", @player_board[symbol_array[2]] = "S"
      puts "Your DESTROYER has been placed. Too bad I can't see it!"
    else
      puts "INVALID INPUT. PLEASE ENTER COORDINATES AS SUCH: C2 C3 C4"
      sleep(2)
      return player_place_destroyer
    end
  end

end
