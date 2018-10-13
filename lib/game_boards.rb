require 'pry'

class Game_Boards
  def initialize
    @hash_chart = {
     A1: "x",
     A2: "x",
     A3: "x",
     A4: "x",
     B1: "x",
     B2: "x",
     B3: "x",
     B4: "x",
     C1: "x",
     C2: "x",
     C3: "x",
     C4: "x",
     D1: "x",
     D2: "x",
     D3: "x",
     D4: "x"}
     @row_1 = "=" * 11
     @row_2 = [".", "1", "2", "3", "4"]
     @row_3 = ["A", [@hash_chart[:A1]], [@hash_chart[:A2]], [@hash_chart[:A3]], [@hash_chart[:A4]]]
     @row_4 = ["B", [@hash_chart[:B1]], [@hash_chart[:B2]], [@hash_chart[:B3]], [@hash_chart[:B4]]]
     @row_5 = ["C", [@hash_chart[:C1]], [@hash_chart[:C2]], [@hash_chart[:C3]], [@hash_chart[:C4]]]
     @row_6 = ["D", [@hash_chart[:D1]], [@hash_chart[:D2]], [@hash_chart[:D3]], [@hash_chart[:D4]]]
     @row_7 = @row_1
     @row_8 = ["S = Ship", "H = Hit", "M = Miss"]
  end

  def print_intro_board
    print @row_1
    print "\n"
    print @row_2.join(' ')
    print "\n"
    print @row_3.join(' ')
    print "\n"
    print @row_4.join(' ')
    print "\n"
    print @row_5.join(' ')
    print "\n"
    print @row_6.join(' ')
    print "\n"
    print @row_7
    print "\n"
    print @row_8.join(', ')
    print "\n"
  end

  def computer_place_destroyer
    coordinates_array = @hash_chart.keys # [:A1, :A2, :A3, :A4, :B1, :B2, :B3, :B4, :C1, :C2, :C3, :C4, :D1, :D2, :D3, :D4]
    random_coord = coordinates_array.sample
    head = random_coord
    # binding.pry
    if random_coord == :A1 || random_coord == :A2 || random_coord == :B1 || random_coord == :B2
      h_middle = coordinates_array[coordinates_array.index(head) + 1]
      h_tail = coordinates_array[coordinates_array.index(head) + 2]
      horizontal_layout = [head, h_middle, h_tail]
      v_middle = coordinates_array[coordinates_array.index(head) + 4]
      v_tail = coordinates_array[coordinates_array.index(head) + 8]
      vertical_layout = [head, v_middle, v_tail]
      layout_options = [horizontal_layout, vertical_layout]
      comp_destroyer_pos = layout_options.sample
    end
    if random_coord == :C3 || random_coord == :C4 || random_coord == :D3 || random_coord == :D4 #bugged
      #say we get #:C4 here
      h_middle = coordinates_array[coordinates_array.index(head) - 1]
      h_tail = coordinates_array[coordinates_array.index(head) - 2]
      v_middle = coordinates_array[coordinates_array.index(head) - 4]
      v_tail = coordinates_array[coordinates_array.index(head) - 8]
      horizontal_layout = [h_tail, h_middle, head]
      vertical_layout = [v_tail, v_middle, head]
      layout_options = [horizontal_layout, vertical_layout] #is the problem here?
      comp_destroyer_pos = layout_options.sample
      # binding.pry
      #if we get head = :C4, for some reason it is printing comp_destroyer_pos = [:C4, :B2, :C2]. What???
      # it is consistently printing [head, head - 6, head - 2]
      #but in pry it works perfectly... where is it creating this new formula/extra step?
    end
    if random_coord == :A3 || random_coord == :A4 || random_coord == :B3 || random_coord == :B4
      v_middle = coordinates_array[coordinates_array.index(head) + 4]
      v_tail = coordinates_array[coordinates_array.index(head) + 8]
      vertical_layout = [head, v_middle, v_tail]
      h_middle = coordinates_array[coordinates_array.index(head) - 1]
      h_tail = coordinates_array[coordinates_array.index(head) - 2]
      horizontal_layout = [h_tail, h_middle, head]
      layout_options = [horizontal_layout, vertical_layout]
      comp_destroyer_pos = layout_options.sample
    end
    if random_coord == :C1 || random_coord == :C2 || random_coord == :D1 || random_coord == :D2
      h_middle = coordinates_array[coordinates_array.index(head) + 1]
      h_tail = coordinates_array[coordinates_array.index(head) + 2]
      horizontal_layout = [head, h_middle, h_tail]
      v_middle = coordinates_array[coordinates_array.index(head) - 4]
      v_tail = coordinates_array[coordinates_array.index(head) - 8]
      vertical_layout = [h_tail, v_middle, head]
      layout_options = [horizontal_layout, vertical_layout]
      comp_destroyer_pos = layout_options.sample
    end
    @hash_chart[comp_destroyer_pos[0]] = "S"
    @hash_chart[comp_destroyer_pos[1]] = "S"
    @hash_chart[comp_destroyer_pos[2]] = "S"
    puts "The computer has placed its destroyer." #at #{comp_destroyer_pos}."
    binding.pry
    sleep(2.5)
    puts "Placing computer canoe..."
  end

# and the canoe cannot be placed on an S.

  # end
  #
  # def computer_place_canoe
  # end
  #
  def player_place_canoe
    puts "I have laid out my ships on the grid."
    puts "You now need to layout your two ships."
    puts "The first is two units long and the"
    puts "second is three units long."
    puts "The grid has A1 at the top left and D4 at the bottom right."
    sleep(3)
    puts "Enter the squares for the two-unit ship:"
    print "> "
    destroyer_entry = $stdin.gets.chomp
  end
  #
  # def player_place_canoe
  # end



end
