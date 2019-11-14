

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