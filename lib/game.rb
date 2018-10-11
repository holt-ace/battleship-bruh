class Game

  def introduction
    puts "Welcome to BATTLESHIP"
    sleep(0.5)
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    sleep(0.5)
    print "> "
    intro_prompt
  end

  def intro_prompt
    choice = $stdin.gets.chomp
    if choice == "p"
      player_choice_play
    elsif choice == "i"
      player_choice_instructions
    elsif choice == "q"
      player_choice_quit
    else
      "ERROR: Invalid selection. Please try again."
    end
    introduction
  end
  def player_choice_play
    puts "Welcome to Battleship!!"
    sleep(2)
    puts "You are now in command of a Destroyer and a civilian canoe."
    sleep(3)
    puts "The computer is your opponent. Placing computer ships..."
    sleep(3)
  end
  def player_choice_instructions
    puts "instructions"
  end
  def player_choice_quit
    print "attempting to exit"
    35.times do
      sleep(0.1)
      print "."
    end
    troll_ellipsis
    low_quality_bait
  end

  def troll_ellipsis
    print "problems detected..."
    5.times do
      sleep(1.5)
      print "."
    end
  end

  def low_quality_bait
    puts
    puts "Failed to exit."
    puts "ERROR: **Computer SHUTDOWN IMMINENT**"
    puts "60 seconds remaining. Enter bitcoin API key now:"
    stupid_input
  end

  def stupid_input
    $stdin.gets.chomp
    print "> "
    puts "Shutdown halted. Say goodbye to your bitcoin!"
    sleep(3)
    puts "KIDDING. Game Terminated."
    exit
  end

end
