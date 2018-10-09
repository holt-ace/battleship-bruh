require './lib/game'

game_1 = Game.new
game_1.introduction
choice = $stdin.gets.chomp
  if choice == "p"
    puts "Welcome to Battleship!!"
    sleep(2)
    puts "You are now in command of a Destroyer and a civilian canoe."
    sleep(3)
    puts "The computer is your opponent. Placing computer ships..."
  elsif choice == "i"
    puts "instruction"
    exit if choice == "q"
  elsif choice == "q"
    print "attempting to exit"
    35.times do
      sleep(0.1)
      print "."
  end
      exit
  end
