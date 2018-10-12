require './lib/game'
require './lib/game_boards'

game_1 = Game.new
game_1.unintentional_introduction
computer_destroyer = Game_Boards.new
computer_destroyer.computer_place_destroyer
