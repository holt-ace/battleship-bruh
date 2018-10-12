class Game_Boards


  def print_board#(player or computer)
  end

  @hash_chart = {
                     A1: S,
                     A2: S,
                     A3: A3,
                     A4: A4,
                     B1: B1,
                     B2: B2,
                     B3: B3,
                     B4: B4,
                     C1: C1,
                     C2: C2,
                     C3: C3,
                     C4: C4,
                     D1: D1,
                     D2: D2,
                     D3: D3,
                     D4: D4
                   }

  def empty_board
    row_1 = "=" * 20
    row_2 =
    row_3 = [@hash_chart[:A1], @hash_chart[:A2], @hash_chart[:A3], @hash_chart[:A4]]
    row_4 = [@hash_chart[:B1], etc]
    row_5 =
    row_6 =
    row_7 = row_1
    row_8 = ["S = Ship", "H = Hit", "M = Miss"]
    print row_8.join(', ')
  end

#computer and player1 need to adhere to this method's rules
  #ships 1) cant wrap around board, 2) they can't stack, 3) destroyer takes 3 slots (head+1 or tail-1),
  #4) ships can be laid either vertically or horizontally
  def placement_rules
    # 1) can't wrap around the board
      if destroyer_tail == row_3[3] #then it can't be placed horizontally
    # 2) can't stack
    # 3) destroyer takes 3 slots
    # 4) canoe takes 2 slots

     end
  end

  def store_hash_values
    if player_entry_for_destroyer == [:A1, :A3]
      @hash_chart.store(:A1..:A3, "S")
      #stores a new key:value pair in the hash
      #if this ^^^ works I will be stoked. not sure if you can take-
      #a range as an argument
    elsif player_entry_for_destroyer == [:A2, :A4]
      @hash_chart.store(:A2..:A4, "S")
    elsif player_entry_for_destroyer == [:B1, :B3]
      @hash_chart.store(:B1..:B3, "S")
    elsif player_entry_for_destroyer == [:B2, :B4]
      @hash_chart.store(:B2..:B4, "S")
    elsif player_entry_for_destroyer == [:C1, :C3]
      @hash_chart.store(:C1..:C3, "S")
    elsif player_entry_for_destroyer == [:C2, :C4]
      @hash_chart.store(:C2..:C4, "S")
    elsif player_entry_for_destroyer == [:D1, :D3]
      @hash_chart.store(:D1..:D3, "S")
    elsif player_entry_for_destroyer == [:D2, :D4]
      @hash_chart.store(:D2..:D4, "S")

      #only covers horizontal placement^^^^^
      #had a hard time thinking about how to do vertical

      #may need to use .rehash method after changing key:value pairs?

      #the .rehash method: Rebuilds the hash based on the current hash-
      #values for each key. If values of key objects have changed since-
      #they were inserted, this method will reindex hsh. If Hash#rehash-
      #is called while an iterator is traversing the hash, a RuntimeError-
      #will be raised in the iterator.


    end
  end

end
