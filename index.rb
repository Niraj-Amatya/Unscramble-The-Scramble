
require 'io/console'
require "colorize"
require "artii"
cmd_args = ARGV

app_name = Artii::Base.new 
puts app_name.asciify("Unscramble The Scramble").colorize(:blue).bold

# puts "Please enter your name player_1:".colorize(:red)
player_1 = cmd_args[0]

# puts "Please enter your name player_2:".colorize(:red)
player_2 = cmd_args[1]
# gets.chomp.upcase.colorize(:blue).bold
ARGV.clear


def greeting(person1, person2)
    puts
    puts "Welcome to the guessing game #{person1} and #{person2}"
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
        puts "Input the word #{first}"
        user_input = STDIN.noecho(&:gets).chomp.upcase
        
            puts "Input the correct string"
        if /^[a-zA-Z]+$/.match(user_input)
            array_words << user_input
        
            generate_random_word = array_words.sample

            puts
            puts "Here is your word to guess #{first}"
            puts
    
            #generate new meaningless word
            generate_new_meaningless_word = generate_random_word.chars.shuffle.join(" ")
            app_name = Artii::Base.new 
            puts app_name.asciify(generate_new_meaningless_word).colorize(:green)

            user_guess = " "
            guess_count = 0
            guess_limit = 3
            out_of_guesses = false

            while user_guess != generate_random_word && !out_of_guesses
                if guess_limit > guess_count
        
                    puts
                    puts "you have #{guess_limit} chance to guess the right word #{second}."
                    puts
                    puts "Please guess the right word #{second}:"
                    user_guess = gets.chomp.upcase
                    guess_limit -= 1

                else
                    out_of_guesses = true

                end

            end
                    if out_of_guesses == true
                        puts
                        puts "Wrong guess #{second}"
                        puts
                        puts "The right word is: #{generate_random_word}"
    
                    elsif out_of_guesses == false
                        puts
                        puts "Right guess #{second}"
                         score += 1
                         
                
                    end

            
        else
            puts "It only takes string"
            puts
            puts "Plese try again"
        
            
        end
# 
        start_round += 1
    end
    score
    # puts "#{second} your total score is  #{score}"
end

begin

        score_player2 = run_game(player_1, player_2)

        # puts "You have scored #{score_player2} #{player_2}"
        puts
        puts "Now its your turn to input the word #{player_2} and you are the guesser #{player_1}"
        score_player1 = run_game(player_2, player_1)

rescue
    puts "Oops Something went wrong."

end

        # puts "You have scored #{score_player1} #{player_1}"
        puts "Player 1 score = #{score_player1}"
        puts "Player 2 score = #{score_player2}"



        if score_player1 > score_player2
            puts "#{player_1} is the winner"
            # puts "Your score is #{score_player1} and #{player_2} score is #{score_player2}"

        elsif score_player2 > score_player1
            puts "#{player_2} is the winner"
            # puts "Your score is #{score_player2} and #{player_1} score is #{score_player1}"
            

        else
            puts "You both are the winner"

        end
