class Game
  def introduction
  puts "Welcome to BATTLESHIP"
  puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  print "> "
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
    end
      exit
  end
end
