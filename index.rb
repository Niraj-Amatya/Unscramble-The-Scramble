#gem files
require 'io/console'
require "colorize"
require "artii"

#ARGV command line used
cmd_args = ARGV

#"artii used for the Game name"
app_name = Artii::Base.new 
puts app_name.asciify("Unscramble The Scramble").colorize(:blue).bold

#error handling when players don't input their names...

#.empty? method is used to see if cmd_args array is empty, as whole thing is saved in cmd_args array..
if cmd_args.empty?
    
    puts "Please enter your name player_1: "
    player_1 = gets.chomp.upcase
    puts
    puts "Please enter your name player_2: "
    player_2 = gets.chomp.upcase

#if name is saved from argv command this is going to run
else
    player_1 = cmd_args[0].upcase
    player_2 = cmd_args[1].upcase
end

ARGV.clear


#putting value of player_1 to final_player_1, so that player_1 can be used with artii later in line 226 
final_player_1 = player_1.colorize(:blue)

#putting value of player_2 to final_player_2, so that player_2 can be used with artii later in line 234 
final_player_2 = player_2.colorize(:green)

# method created for the welcome note. Welcome note will have brief note about the game
def greeting(person1, person2)
    sleep(1)
    127.times{print "="}
    puts
    #welcome message
    puts
    puts "Welcome to the world of Guessing game #{person1} and #{person2}."
    puts "A bit of brief about the Game:"
    puts "There are two players in this game: Player_1 and Player_2."
    puts "Player_1 is the provider of words and Player_2 will be the guesser."
    puts "#{person1} you are the provider and #{person2} you are the guesser."
    puts "Best of Luck!!!!!"

    127.times{print "="}
    puts
    puts

        #Information for player 1 guide
        sleep(2)
        puts "You are the Player_1 #{person1}."
        puts "Remember the word can only be strings"
        puts "Just not to confuse, you can't see anything you are typing in the screen. So just hit enter after you type the word."
        puts
end



#method to call the most part of the game
def run_game(first, second)
    start_word = 0
    #maximum words that can be played is 5
    max_word = 2
    first_player = first
    second_player = second
    score = 0

    #calling method for the welcome note
    greeting(first_player, second_player) 

    #this contion will make loop until 5 words are entered to guess
    while start_word < max_word
        #empty arry to save word from the player 1 for guessing
        array_words = []
        puts
        sleep(1.5)
        print "Please input your word #{first_player}:"
        #STDIN.noecho is used to mask the word
        user_input = STDIN.noecho(&:gets).chomp.upcase

        #error handling for user input. Regex used to make sure only string is accepted.        
        if /^[a-zA-Z]+$/.match(user_input)
            puts
            puts
            #if word is string it is pushed to array_words
            array_words << user_input
        
            #Generate random meaningless word
            generate_random_word = array_words.sample
            sleep(1)
            generate_new_meaningless_word = generate_random_word.chars.shuffle.join(" ")

            #Artii Gem used to display the guessing word so that it is highlighted
            app_name = Artii::Base.new 
            puts "Here is the word to guess:"
            puts
            puts app_name.asciify(generate_new_meaningless_word).colorize(:blue)
            
            
            puts
            sleep(1)
            #Information for player 2
            puts "You are Player_2, #{second_player}."
            
            

            user_guess = " "
            guess_count = 0
            #maxium guess allowed is 3
            guess_limit = 3
            #since guessing has not started, it is zero at the beginning
            out_of_guesses = false
            
            #condition for player 2
            while user_guess != generate_random_word && !out_of_guesses
                #condition for how many times can player guess
                if guess_limit > guess_count
                    
                    sleep(1)
                    puts
                    # informs user how many guesses are lef
                    puts "Reminder! you have #{guess_limit} chance to Unscramble this Scrambled word.".colorize(:red)
                    puts "Best of Luck!!!"
                    print "Please guess the right word #{second_player}: "
                    #after every wrong guess max_guess is reduced by 1
                    guess_limit -= 1
                    #gets  word frm second player
                    user_guess = gets.chomp.upcase
                    
                #after all the wrong guesses are made, player is out of guesses. so it is true
                else
                    out_of_guesses = true

                end

            end
                    # checking if guessed word is right or wrong
                    if out_of_guesses == true
                        puts
                        puts
                        puts "Oops! Wrong guess #{second}.".colorize(:red)
                        puts
                        puts
                        sleep(1)
                        puts "The Right word is:"
                        app_name = Artii::Base.new 
                        puts app_name.asciify(generate_random_word).colorize(:green)
                        
                    elsif out_of_guesses == false
                        puts
                        puts
                        sleep(1)
                        puts "Right guess #{second}. Good job!!!".colorize(:green)
                        #every time right guess is made, it is added to score 
                        score += 1
                    end

                #when input by word provider is anything other than string
        else 
            puts
            puts "Invalid input."
            puts "Please input only strings."
            puts
                
        end
        #every time new word is provided it will add 1 until max_word is met.
        start_word += 1
    end
    #this will update score. its initial value is zero.
    score
    
end

    #begin/rescue is used to handle the error

    begin
            #calling run_game method with player_1 being the provider of word and player_2 being the guessor
            score_player2 = run_game(final_player_1, final_player_2)
            puts
            puts
            sleep(2)
            puts "Now lets switch the game between the players."
            puts
            puts
            #calling method to switch the game between the players
            score_player1 = run_game(final_player_2, final_player_1)
    
            puts
            puts
            sleep(2)
            #prints the score of both the players
            app_name = Artii::Base.new 
            puts "#{final_player_1} your score for this game is: "
            puts app_name.asciify(score_player1).colorize(:green)
            puts
            sleep(2) 
            puts "#{final_player_2} your score for this game is: "
            #Artii is used
            puts app_name.asciify(score_player2).colorize(:green) 

            

            #compares the score to check for the winner
            if score_player1 > score_player2
                puts
                puts
                sleep(2)
                puts "Congratulation! You are the winner:"
                sleep(2)
                #Artii is used
                app_name = Artii::Base.new 
                puts app_name.asciify(player_1).colorize(:blue)
            
            elsif score_player2 > score_player1
                puts
                puts
                sleep(2)
                puts "Congratulation! You are the winner:"
                sleep(2)
                app_name = Artii::Base.new 
                puts app_name.asciify(player_2).colorize(:green)
                
            else
                puts
                puts
                puts "Congratulation, you both are the winner."
                puts

            end
    
    rescue
        #this is rescue message when the program can't run
        puts "We did not anticipate things going worng. We will try to fix it as soon as possible."
        puts
        puts

    end

    
