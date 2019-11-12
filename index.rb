array_words = ["apple", "Library", "Book", "Boat", "Boy", "Girl", "bag"]

 generate_random_word = array_words.sample.chars.shuffle.join("        ")

 puts "Please input your username?"

 username = gets.chomp

 puts " Welcome to the words guessing game #{username}"
 puts "Here is your first word"

 p generate_random_word

 puts "Please guess the right word."

 player_guess_word = gets.chomp

 if player_guess_word == generate_random_word
    puts "you won the game"

#  elsif 
#     puts "Would you like to try again?"
#         response = gets.chomp
 end

        
