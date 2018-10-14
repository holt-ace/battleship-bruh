#method will take one split coordinate and returning all possible horizontal orientations for any ship length
def options_maker_horizontal(letter, sign_of_one, number, ship_length)
  options = []
  ship_length.times do |index|
    updated_num = number.to_i + (sign_of_one * index)
    options << letter + updated_num.to_s
  end
  options
end

def options_maker_vertical(letter, sign_of_one, number, ship_length)
  options = []
  ship_length.times do |index|
    updated_letter = letter + (sign_of_one * index)
    options << updated_letter + number.to_s
  end
  options
end

def where_can_ship_go(coordinate, ship_length)
  right = options_maker_horizontal(coordinate[0], 1, coordinate[1], ship_length)
  left = options_maker_horizontal(coordinate[0], -1, coordinate[1], ship_length)
  down = #options_maker_vertical
  up = #options_maker_vertical
  # orientations = [right, left, down, up].map do |element|
  # verify all positions are on the board


  #hash_chart.keys.include? == true

#last step is verifying that options_maker values are actually on the board
#coordinates_array.include?(coordinates[0]) == true
