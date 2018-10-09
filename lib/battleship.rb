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
    print "thinking"
    5.times do
      sleep(1.5)
      print "."
    end
    puts
    puts "Failed to exit."
    puts "**Computer SHUTDOWN IMMINENT**"
    exit
end
