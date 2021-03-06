require './lib/game_boards'

class Game

  def unintentional_introduction
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
      unintentional_introduction
    end
  end
  def player_choice_play
    puts "You entered 'play'. Initiating game mode..."
    sleep(3)
    puts "You are now in command of a Destroyer and a civilian canoe."
    sleep(3)
    puts "I am the computer, your opponent. Here is the board we will use:"
    sleep(3)
    board_1 = GameBoards.new
    board_1.print_intro_board
    puts "As you can see, there are 16 possible coordinates to attack. I will now place my ships..."
  end

  def player_choice_instructions
    puts "WELCOME TO THE NAVY, NEW PHISH. ;)"
    sleep(2.5)
    puts "Summary:"
    sleep(0.5)
    puts "Battleship is a classic two player game where players try to sink their opponent’s navy ships. \nYour opponent in this game is a computer. The game includes two ships - a Canoe and a Destroyer.
Battleship is an easy game for all ages. The basic object of this game is to hide your two \nship fleet somewhere on your ocean (board),
and by calling out basic coordinates, find your opponent’s fleet before they find yours."
    sleep(5)
    puts "Follow along and the game will guide you on what to do. It's easy to play, but can you win?"
    sleep(8)
    unintentional_introduction
  end

  def player_choice_quit
    print "attempting to exit"
    100.times do
      sleep(0.1)
      print "."
    end
    puts "unable to exit program."
    troll_ellipsis
    olive_branch
    player_choice_quit
  end

  def troll_ellipsis
    print "running security scan"
    5.times do
      sleep(1.5)
      print "."
    end
    sleep(5)
    print "virus detected."
    sleep(3)
  end

  def olive_branch
    puts %Q{
                .@&%%#//&*...
             %&    #,*(.*    &/,.
       ,/#%#/*****,...,,.   ,%,  @/
    .%*   ..,.     ,,,,,*,,.  */  .(@,
    #   .    ,    . .,,,. ..   ((,*  @%
  ,%,.../&%@@(.  .&.,#@&&%/*, .*/%/ . ,&.
 (#,,#%/.    #,        %(*/&%*./# .%,. @/
 *%.. /..  *%.    /%/..   .#%#&*,,.(#,  ,&,
  ,/,/&%*.  ,(* ...(,*#%(#/ *@, ,,*%#,,  &/
   %,#&(*(%#%&%#&*, ,*,(&@#*%   .%.  %(. *@
   (*(@@@@@&&@&&@&@@&%,  *@,   ,#    (/   %,
   #,.%%(((/*&*../   /##&.    */      #   *%
   #   ,(&&@%&%#%&%%#,.***/*%*        .#/ .%
   # . .*,.....  .,***,*#(,            #, ,&
   %.   .... .     ,#/.@,              (,.%,
    .#%(/*/(###*,.     @,              *%.&.
                       @.              .(/%
                      ,&/(           (( %&,                                    ,%@&%%%&@.
                      %%*.       ..,//, , .(%,              .,(#&&@@@@%/    /@/.*((,,,**(*.(@(
                     (@,&(           .(. /    .#&@@@@@@@&%(**,          ./@@,,/**,... .*/. /, &/
                    .&.(              .  (.                  *             (@@%/,,,   ./  ,..# ,#
                   .& *                  .*                  ..             /@     ,&(  ,/ .  * %(
                   &, (                   /                   (              //      *#  *  . / /@
                  #, .(                   *                   *              .%      ,%  (  . / *@
                  #, */                   /                   ,            /(.@,    .&. * ./  . *&
                  .# .(                   (                   ,            ,/,@*    @/./  *  /  &/
                   &/  (,                .*                   / ((    .*(, ((,@,  *@.*  *,  ,  ((
                   *@****% #,          /**,#/               (,(,/(#*         /&. /&,* ./  *   &%
                   .&,.   #.,*///////*,. #(//,,*,.**(((//(,. ,,#(           *@. &&,/  , ,/  *&.
                    #(/   ..%/        #/ *(*              .(,(           *(#@, .& #  ( ., *&*
                     &.    /           *%                   ,..       .,,,#@   ,% (.   #,&(
                     ,&    .(          ,(         .. .. .,///./,*/*,  */ *@.    @,  %@.%%
                      ,&     /         ,%#*/,,****.#(%&@@@@,( (#        *@      (& .&%&@,
                       &@#. (##        @( .,,,,,,,..      %,.*,.        &,       *%,% /%
                       /&,,*,.&( *(,  *%                  ,& ,        ,&          *@@,
                        &.*,  &@&*///#@.                   /# ,((  /@(%
                        .@*(,*@*@ ## ,@.                   .@#&(//((*&,
                         *@..*&*@  .  &,                   ,@,(*%. /*#*
                          #((.& (( , .&.                    @/*/    .&,
                          ,*  (. %%..#@                      %( *(#/&&
                           %  ,# .&,,#&                       @(.(  (%
                           @*/.@# #, *@                       #% ,  ,&
                          ,@*(. %/(#*#@,                      #@ .,  (
                          #* .  ((@**(#%                      @*((///*#
                   *@&@@@@@@(#/(&&. / .@&%%&&&&&%%%#((((((//(%&  .#**,%&
                  ,@,    .%/   .,(%*/ %*                    %#  /%(%  (.@%%&
                 (@     /(    .*/(   ,#%**,.              /@   *((.*((@@.  #(
                *&.     #*   .,#*   ..*@(****  .     ,***(%  ,/#   .*/@(..  @/
               (&        *@* .#     .,*@#//////*,    ...,/@/.*(   ,/(#&,.   /@
              *#             %&    ,,.*@%..      ,        ..@&    .,,*@/*,.. ##
             %&                (&#%&**//*,        ..  .,@/    *,,#@#**..  @#
            #%..                                          ,,,*#%&&&@&/,,.     ,@,
           .&*...,,,                ............,,...,,,*/(((##(##%%%##((/,..,,#@.
            %#//****,                                                        ,*%%
            %/.,,....                                                   ,,/////%(
                 @(       *@(////(##%&&&&&&&&@@@@@@@@@@@@@@@@&%%(/*,.....,,,//#&*
                  ,@#.,*#@(                                     ,&/      ,@(
                                                                   *%@@@#/ }
  end
end
