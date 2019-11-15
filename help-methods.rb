
require "colorize"
require "artii"



def help_menu
    puts "====================================\n" 
    puts "Unscrumble The Scrumble (Help menu)\n" 
    puts "====================================\n" 
    puts
    puts

    puts "Unscrumble the Scrumble is a word guessing game terminal app, mostly targeting the young kids in the Knidergarten."  
    puts " 1. There are two players, Player_1 and Player_2. The game has two part in itself."
    puts " 2. Users are expected to give their name in the beginning of the game."
    puts " 3. For the first part of the game Player_1 will input the word which will then be scrumbled and printed in the screen. 
        Player_2 will have to guess the correct word. The input from the Player_1 is masked so while Player_1 is typing the 
        word, its invisible. "
    puts " 4. It is necessary to input only strings otherwise program will not run further."
    puts " 5. Each game will have 5 words to guess"
    puts " 6. The Player will have three chance to guess the right word and for every right guess, the Player will score 1 point."
    puts " 7. After all three wrong guesses, right answer will be printed. But no point is scored."
    puts " 8. With the fifth word the first part of the game will end."
    puts " 9. New game will start without ending the game in terminal. This is just the continuation of the second part
        of the game."
    puts "10. In this part of the game Player_2 will input the word and Player_1 has to guess the word."    
    puts "11. Messages will prompt for Players guide."

end

help_menu