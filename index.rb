
require 'io/console'
require "colorize"
require "artii"

app_name = Artii::Base.new 
puts app_name.asciify("Unscramble Words").colorize(:blue)
# puts welcome_app_name("Kanji  Ninja  App!").red #fix this.


play_game = "yes"

$player1 = ""
$player2 = ""

#method to get the players name
def players_name()

    puts "Please input your name PlAYER1?".colorize(:red)
    $player1 = gets.chomp
    puts
    puts "Please input your name PlAYER2?"
    $player2 = gets.chomp
    
end

#calling method
players_name


    puts "Are you ready to play the guessing game #{$player1} and #{$player2}?"
    play_game = gets.chomp

    if play_game == "yes"
    
        puts "Welcome to the guessing game #{$player1} and #{$player2}."
    
    else 
        puts "Better Luck next time #{$player1}"
        
    end


max_game = 5
start_game = 0
score = 0

while start_game < max_game && play_game == "yes"
    array_words = []
    
    puts "Input the word #{$player1}"
    user_input = STDIN.noecho(&:gets).chomp.upcase
    array_words << user_input
    
    generate_random_word = array_words.sample

    puts "Here is your word to guess #{$player2}"
    puts

        #generate new meaningless word
        generate_new_meaningless_word = generate_random_word.chars.shuffle.join("               ")
        app_name = Artii::Base.new 
        puts app_name.asciify(generate_new_meaningless_word).colorize(:green)

        
        # 
        user_guess = " "
        guess_count = 0
        guess_limit = 3
        out_of_guesses = false

        if guess_limit > guess_count
        
            puts
            puts "you have #{guess_limit} chance to guess the right word #{$player2}."
            puts "Please guess the right word #{$player2}:"
            user_guess = gets.chomp.upcase
            guess_limit -= 1
    
    
        else
                out_of_guesses = true
        end


   
    start_game += 1
end