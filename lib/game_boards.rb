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

# computer and player1 need to adhere to this method's rules
#   ships 1) cant wrap around board, 2) they can't stack, 3) destroyer takes 3 slots (head+1 or tail-1),
#   4) ships can be laid either vertically or horizontally
  def placement_rules_computer_destroyer
    # 1) can't wrap around the board
    # 2) can't stack
    # 3) destroyer takes 3 slots
    # 4) canoe takes 2 slots

  end

  def placement_rules_computer_canoe
  end

  def placement_rules_player_destroyer
  end

  def placement_rules_player_canoe
  end

  #     #only covers horizontal placement^^^^^
  #     #had a hard time thinking about how to do vertical
  #
  #     #may need to use .rehash method after changing key:value pairs?
  #
  #     #the .rehash method: Rebuilds the hash based on the current hash-
  #     #values for each key. If values of key objects have changed since-
  #     #they were inserted, this method will reindex hash. If Hash#rehash-
  #     #is called while an iterator is traversing the hash, a RuntimeError-
  #     #will be raised in the iterator.
  #
  #
  #   end
  # end

end
