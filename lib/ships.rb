require './lib/game_boards'
require 'pry'
class Ships

  def computer_place_destroyer
    coordinates_array = @hash_chart.keys # [:A1, :A2, :A3, :A4, :B1, :B2, :B3, :B4, :C1, :C2, :C3, :C4, :D1, :D2, :D3, :D4]
    random_coord = coordinates_array.sample
    if random_coord == :A1 || random_coord == :A2 || random_coord == :B1 || random_coord == :B2
      h_middle = coordinates_array[coordinates_array.index(random_coord) + 1]
      h_tail = coordinates_array[coordinates_array.index(random_coord) + 2]
      horizontal_layout = [random_coord, h_middle, h_tail]
      v_middle = coordinates_array[coordinates_array.index(random_coord) + 4]
      v_tail = coordinates_array[coordinates_array.index(random_coord) + 8]
      vertical_layout = [random_coord, v_middle, v_tail]
      layout_options = [horizontal_layout, vertical_layout]
      comp_destroyer_pos = layout_options.sample
    elsif random_coord == :C3 || random_coord == :C4 || random_coord == :D3 || random_coord == :D4
      h_middle = coordinates_array[coordinates_array.index(random_coord) - 1]
      h_tail = coordinates_array[coordinates_array.index(random_coord) - 2]
      v_middle = coordinates_array[coordinates_array.index(random_coord) - 4]
      v_tail = coordinates_array[coordinates_array.index(random_coord) - 8]
      horizontal_layout = [h_tail, h_middle, random_coord]
      vertical_layout = [v_tail, v_middle, random_coord]
      layout_options = [horizontal_layout, vertical_layout]
      comp_destroyer_pos = layout_options.sample
    elsif random_coord == :A3 || random_coord == :A4 || random_coord == :B3 || random_coord == :B4
      v_middle = coordinates_array[coordinates_array.index(random_coord) + 4]
      v_tail = coordinates_array[coordinates_array.index(random_coord) + 8]
      vertical_layout = [random_coord, v_middle, v_tail]
      h_middle = coordinates_array[coordinates_array.index(random_coord) - 1]
      h_tail = coordinates_array[coordinates_array.index(random_coord) - 2]
      horizontal_layout = [h_tail, h_middle, random_coord]
      layout_options = [horizontal_layout, vertical_layout]
      comp_destroyer_pos = layout_options.sample
    elsif random_coord == :C1 || random_coord == :C2 || random_coord == :D1 || random_coord == :D2
      h_middle = coordinates_array[coordinates_array.index(random_coord) + 1]
      h_tail = coordinates_array[coordinates_array.index(random_coord) + 2]
      v_middle = coordinates_array[coordinates_array.index(random_coord) - 4]
      v_tail = coordinates_array[coordinates_array.index(random_coord) - 8]
      vertical_layout = [v_tail, v_middle, random_coord]
      horizontal_layout = [random_coord, h_middle, h_tail]
      layout_options = [horizontal_layout, vertical_layout]
      comp_destroyer_pos = layout_options.sample
    end
    @hash_chart[comp_destroyer_pos[0]] = "S"
    @hash_chart[comp_destroyer_pos[1]] = "S"
    @hash_chart[comp_destroyer_pos[2]] = "S"
    puts "I have placed my destroyer."
  end

  def computer_place_canoe
    coordinates_array = @hash_chart.keys # [:A1, :A2, :A3, :A4, :B1, :B2, :B3, :B4, :C1, :C2, :C3, :C4, :D1, :D2, :D3, :D4]
    random_coord = coordinates_array.sample
    h_tail = coordinates_array[coordinates_array.index(random_coord) + 1]
    v_tail = coordinates_array[coordinates_array.index(random_coord) + 4]
    reverse_tail = coordinates_array[coordinates_array.index(random_coord) - 1]
    upside_down_tail = coordinates_array[coordinates_array.index(random_coord) - 4]
    vertical_layout = [random_coord, v_tail]
    horizontal_layout = [random_coord, h_tail]
    reverse_layout = [random_coord, reverse_tail]
    upside_down_layout = [random_coord, upside_down_tail]
    if @hash_chart[random_coord] != "S"
      if random_coord == :A1
        layout_options = [horizontal_layout, vertical_layout]
        comp_canoe_pos = layout_options.sample
      elsif random_coord == :A2 || random_coord == :A3
        layout_options = [horizontal_layout, reverse_layout, vertical_layout]
        comp_canoe_pos = layout_options.sample
      elsif random_coord == :A4
        layout_options = [reverse_layout, vertical_layout]
        comp_canoe_pos = layout_options.sample
      elsif random_coord == :B1 || random_coord == :C1
        layout_options = [upside_down_layout, horizontal_layout, vertical_layout]
        comp_canoe_pos = layout_options.sample
      elsif random_coord == :B2 || random_coord == :B3 || random_coord == :C2 || random_coord == :C3
        layout_options = [upside_down_layout, horizontal_layout, vertical_layout, reverse_layout]
        comp_canoe_pos = layout_options.sample
      elsif random_coord == :B4 || random_coord == :C4
        layout_options = [reverse_layout, upside_down_layout, vertical_layout]
        comp_canoe_pos = layout_options.sample
      elsif random_coord == :D1
        layout_options = [upside_down_layout, horizontal_layout]
        comp_canoe_pos = layout_options.sample
      elsif random_coord == :D2 || random_coord == :D3
        layout_options = [reverse_layout, upside_down_layout, horizontal_layout]
        comp_canoe_pos = layout_options.sample
      elsif random_coord == :D4
        layout_options = [reverse_layout, upside_down_layout]
        comp_canoe_pos = layout_options.sample
      end
    end
    if @hash_chart[random_coord] == "S"
      computer_place_canoe
    end
    @hash_chart[comp_canoe_pos[0]] = "S"
    @hash_chart[comp_canoe_pos[1]] = "S"
    puts "I have placed my canoe."

  def player_place_canoe
    puts "I have laid out my ships on the grid."
    puts "You now need to layout your two ships."
    puts "The first is two units long and the \nsecond is three units long."
    puts "The grid has A1 at the top left and \nD4 at the bottom right."
    sleep(3)
    puts "Example Entry: 'A1 A2'"
    puts "Enter the coordinates for the two-unit ship seperated by a space."
    print "> "
    player_canoe_entry = $stdin.gets.chomp
    # break entry into seperate strings array of key coordinates
    canoe_coordinates_array = player_canoe_entry.split
    #iterate through the array and change each element to a symbol
    symbol_array = canoe_coordinates_array.map do |coordinate_key|
      # `a.map{|x|x.to_sym}`
      coordinate_key.to_sym
    end
    # refactor split and map methods^^^^
    # canoe_coordinates_array = player_canoe_entry.split(" ").map { |coordinate_key| coordinate_key.to_sym }
    # now need to create

    #return hash_chart changes
    return @hash_chart[symbol_array[0]] = "S", @hash_chart[symbol_array[1]] = "S"
    #this works we just need to give it access to @hash_chart
    #almost went down a rabbit hole of no return but found a shortcut!
  end

  #this method does the same as player_place_canoe
  def player_place_destroyer
    puts "Now enter the coordinates for the 3 unit ship seperated by spaces."
    puts "Example Entry: 'C2 C3 C4'"
    print "> "
    player_destroyer_entry = $stdin.gets.chomp
    destroyer_coordinates_array = player_destroyer_entry.split(" ")
    symbol_array = destroyer_coordinates_array.map do |coordinate_key|
      coordinate_key.to_sym
    end

    return @hash_chart[symbol_array[0]] = "S", @hash_chart[symbol_array[1]] = "S", @hash_chart[symbol_array[2]] = "S"
  end

end
