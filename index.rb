
require 'io/console'
max_game = 5
start_game = 0
score = 0
play_game = "yes"

$player1 = ""
$player2 = ""




def players_name()

    puts "Please input your name PlAYER1?"
    $player1 = gets.chomp
    puts
    puts "Please input your name PlAYER2?"
    $player2 = gets.chomp
    
end

players_name


puts "Are you ready to play the guessing game #{$player1} and #{$player2}?"
play_game = gets.chomp

if play_game == "yes"
    
    puts "Welcome to the guessing game #{$player1} and #{$player2}."
    
else 
    puts "Better Luck next time #{$player1}"
        
end


while start_game < max_game && play_game == "yes"
    array_words = []
    
    puts "Input the word #{$player1}"
    user_input = STDIN.noecho(&:gets).chomp.upcase
    array_words << user_input
    
    generate_random_word = array_words.sample

    puts "Here is your word to guess #{$player2}"
    puts
    p generate_new_meaningless_word = generate_random_word.chars.shuffle.join("        ")


end