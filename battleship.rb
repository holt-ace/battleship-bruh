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
    sleep(3)
    game_1.empty
    # print table with randomly populated computer ships (matching the given spec parameters)
  elsif choice == "i"
    puts "instruction"
    exit if choice == "q"
  elsif choice == "q"
    print "attempting to exit"
    35.times do
      sleep(0.1)
      print "."
    end
    print "problems detected..."
    5.times do
      sleep(1.5)
      print "."
    end
    puts
    puts "Failed to exit."
    puts "ERROR: **Computer SHUTDOWN IMMINENT**"
    puts "60 seconds remaining. Enter bitcoin API key now:"
    $stdin.gets.chomp
    print "> "
    puts "Shutdown halted. Say goodbye to your bitcoin!"
    sleep(3)
    puts "KIDDING. Game Terminated."
    exit
<<<<<<< HEAD
    
=======
>>>>>>> fe4aab35cfe2b5224788a060804ed80e899b18a8
end
