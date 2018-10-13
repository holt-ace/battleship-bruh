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
    if random_coord == :A1 || :A2 || :B1 || :B2
      h_middle = coordinates_array[coordinates_array.index(head) + 1]
      h_tail = coordinates_array[coordinates_array.index(head) + 2]
      v_middle = coordinates_array[coordinates_array.index(head) + 4]
      v_tail = coordinates_array[coordinates_array.index(head) + 8]
    end
    if random_coord == :C3 || :C4 || :D3 || :D4
      h_middle = coordinates_array[coordinates_array.index(head) - 1]
      h_tail = coordinates_array[coordinates_array.index(head) - 2]
      v_middle = coordinates_array[coordinates_array.index(head) - 4]
      v_tail = coordinates_array[coordinates_array.index(head) - 8]
    end
    if random_coord == :A3 || :A4 || :B3 || :B4
      v_middle = coordinates_array[coordinates_array.index(head) + 4]
      v_tail = coordinates_array[coordinates_array.index(head) + 8]
      h_middle = coordinates_array[coordinates_array.index(head) - 1]
      h_tail = coordinates_array[coordinates_array.index(head) - 2]
    end
    if random_coord == :C1 || :C2 || :D1 || :D2
      h_middle = coordinates_array[coordinates_array.index(head) + 1]
      h_tail = coordinates_array[coordinates_array.index(head) + 2]
      v_middle = coordinates_array[coordinates_array.index(head) - 4]
      v_tail = coordinates_array[coordinates_array.index(head) - 8]
    end
    vertical_layout = [h_tail, v_middle, head]
    horizontal_layout = [head, h_middle, h_tail]
    layout_options = [horizontal_layout, vertical_layout]
    comp_destroyer_pos = layout_options.sample
    @hash_chart[comp_destroyer_pos[0]] = "S"
    @hash_chart[comp_destroyer_pos[1]] = "S"
    @hash_chart[comp_destroyer_pos[2]] = "S"
    puts "The computer has placed its destroyer at #{comp_destroyer_pos}."
  end

# and the canoe cannot be placed on an S.

  # end

  def computer_place_canoe
  end

  def placement_rules_player_destroyer
  end

  def placement_rules_player_canoe
  end



end
