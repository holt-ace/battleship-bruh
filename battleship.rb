require './lib/game'
require './lib/game_boards'
require './lib/ships'

game_1 = Game.new
game_1.unintentional_introduction
computer_ships = Ships.new
sleep(2)
computer_ships.computer_place_destroyer
sleep(3)
computer_ships.computer_place_canoe
sleep(3)
player_ships = Ships.new
player_ships.player_place_canoe
sleep(2)
player_ships.player_place_destroyer
puts "Mission Failure. Come back next time for more battleship!"
sleep(3)
game_1.unintentional_introduction
