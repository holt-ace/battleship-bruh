puts "Welcome to BATTLESHIP"
puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
print "> "
choice = $stdin.gets.chomp

if choice == "p"
  puts "Play"
elsif choice == "i"
  puts "instructions"
elsif choice == "q"
  puts "quiting game..."
  sleep(5)
  exit
end
