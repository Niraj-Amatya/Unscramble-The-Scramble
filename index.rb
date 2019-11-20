
require 'io/console'
require "colorize"
require "artii"
cmd_args = ARGV

app_name = Artii::Base.new 
puts app_name.asciify("Unscramble The Scramble").colorize(:blue).bold

# puts "Please enter your name player_1:".colorize(:red)
player_1 = cmd_args[0].upcase.colorize(:blue)

# puts "Please enter your name player_2:".colorize(:red)
player_2 = cmd_args[1].upcase.colorize(:yellow)
# gets.chomp.upcase.colorize(:blue).bold
ARGV.clear


def greeting(person1, person2)
    sleep(1)
    127.times{print "="}
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

        sleep(2)
        puts "You are the Player_1 #{person1}."
        puts "Remember the word can only be strings"
        puts "Just not to confuse, you can't see anything you are typing in the screen. So hit enter to enter the word."
        puts
end




def run_game(first, second)
    start_round = 0
    max_rounds = 3
    first_player = first
    second_player = second
    score = 0
    greeting(first_player, second_player)

    
    while start_round < max_rounds
        
        array_words = []
        puts
        sleep(1.5)
        print "Please input your word #{first_player}:"
        user_input = STDIN.noecho(&:gets).chomp.upcase

        
            # puts "Input the correct string"
        if /^[a-zA-Z]+$/.match(user_input)
            puts
            puts
            array_words << user_input
        
            generate_random_word = array_words.sample
            sleep(1)
            generate_new_meaningless_word = generate_random_word.chars.shuffle.join(" ")
            app_name = Artii::Base.new 
            puts "Here is the word to guess:"
            puts
            puts app_name.asciify(generate_new_meaningless_word).colorize(:green)
            
            
            puts
            sleep(1)
            puts "You are Player_2, #{second_player}."
            # puts "You are the Guesser."
            
            # sleep(2.5)
            # puts "Here is your word to Guess #{second_player}"
            # puts
            # sleep(1.5)
            #generate new meaningless word
            

            user_guess = " "
            guess_count = 0
            guess_limit = 3
            out_of_guesses = false

            while user_guess != generate_random_word && !out_of_guesses
                if guess_limit > guess_count
                    
                    # puts
                    # puts
                    # sleep(2)
                    
                    # puts
                    
                    sleep(1)
                    
                    puts
                    puts "Reminder! you have #{guess_limit} chance to Unscramble this Scrambled word.".colorize(:red)
                    puts "Best of Luck!!!"
                    print "Please guess the right word #{second_player}: "
                    
                    
                    guess_limit -= 1
                    user_guess = gets.chomp.upcase
                    

                else
                    out_of_guesses = true

                end

            end
                    if out_of_guesses == true
                        puts
                        puts
                        puts "Oops! Wrong guess #{second}.".colorize(:red)
                        puts
                        puts
                        sleep(1)
                        puts "The right word is:" + "#{generate_random_word}".colorize(:green)
    
                    elsif out_of_guesses == false
                        puts
                        puts
                        sleep(1)
                        puts "Right guess #{second}.Good job!!!".colorize(:green)
                         score += 1
                    end

            
                else puts
                puts
                puts "Invalid input."
                puts "Please input only strings."
                puts
            
        
            
        end
# 
        start_round += 1
    end
    score
    # puts "#{second} your total score is  #{score}"
end



    begin
            score_player2 = run_game(player_1, player_2)
            puts
            puts
            sleep(2)
            puts "Now lets switch the game between the players."
            puts
            puts
            score_player1 = run_game(player_2, player_1)
    

    # rescue
    #     puts "We did not anticipate things going worng. We will try to fix this as soon as possible."

   
            puts
            puts
            sleep(2)
            puts "Your score for this game is" + " #{score_player1},".colorize(:green) + " #{player_1}."
            puts "Your score for this game is" + " #{score_player2},".colorize(:green) + " #{player_2}."

            if score_player1 > score_player2
                puts
                puts
                sleep(2)
                puts "Congratulation #{player_1}, you are the winner."
                # puts "Your score is #{score_player1} and #{player_2} score is #{score_player2}"

            elsif score_player2 > score_player1
                puts
                puts
                sleep(2)
                puts "Congratulation #{player_2} you are the winner."
                # puts "Your score is #{score_player2} and #{player_1} score is #{score_player1}"
                

            else
                puts "Congratulation, you both are the winner."

            end
    rescue
        puts "We did not anticipate things going worng. We will try to fix it as soon as possible."
        puts
        puts

    end

    
