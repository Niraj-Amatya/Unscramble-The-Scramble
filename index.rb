
require 'io/console'
require "colorize"
require "artii"
cmd_args = ARGV


app_name = Artii::Base.new 
puts app_name.asciify("Unscramble The Scramble").colorize(:blue)



$play_game = "yes"

$player1 = cmd_args[0]
$player2 = cmd_args[1]
ARGV.clear

    puts "Are you ready to play the guessing game #{$player1} and #{$player2}?"
    $play_game = gets.chomp


    
    def want_to_play_game()

        if $play_game == "yes"
    
        puts "Welcome to the guessing game #{$player1} and #{$player2}."
    
        else 
        puts "Better Luck next time #{$player1}"
        
        end
    end
    want_to_play_game() #calling the method

max_game = 5
start_game = 0
score = 0

while start_game < max_game && $play_game == "yes"
    array_words = []
    
    
    puts "Input the word #{$player1}"
    user_input = STDIN.noecho(&:gets).chomp.upcase


# checking if user input is string or not by using regex
    if /^[a-zA-Z]+$/.match(user_input)
        array_words << user_input
    
        generate_random_word = array_words.sample

        puts "Here is your word to guess #{$player2}"
        puts

        #generate new meaningless word
        generate_new_meaningless_word = generate_random_word.chars.shuffle.join("               ")
        app_name = Artii::Base.new 
        puts app_name.asciify(generate_new_meaningless_word).colorize(:green)
       
         
        user_guess = " "
        guess_count = 0
        guess_limit = 3
        out_of_guesses = false

        while user_guess != generate_random_word && !out_of_guesses
            if guess_limit > guess_count
        
            puts
            puts "you have #{guess_limit} chance to guess the right word #{$player2}."
            puts "Please guess the right word #{$player2}:"
            user_guess = gets.chomp.upcase
            guess_limit -= 1
    
    
            else
                out_of_guesses = true
            end

        end


            if out_of_guesses
                puts "Wrong guess #{$player2}"
                puts "The right word is: #{generate_random_word}"

            else
                puts "Right guess #{$player2}"
                score += 1
            
            end

    else
        puts "It only takes string"
        puts "Plese try again"
        # user_input = STDIN.noecho(&:gets).chomp.upcase
    end
    
    
    
   
    start_game += 1
end

puts "#{$player2} your total score is  #{score}"


