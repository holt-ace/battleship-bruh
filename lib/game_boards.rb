require 'pry'

class GameBoards
  attr_accessor :hash_chart
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
     D4: "x",
     }
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
end
