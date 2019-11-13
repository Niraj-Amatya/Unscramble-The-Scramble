
def main()
     user_input = 'yes'
        puts "Do you want to play Words Guessing Game?"
        puts "Please enter 'yes' to play and 'no' to end"

        user_input = gets.chomp

        puts "Please input your username?"

        username = gets.chomp

        puts " Welcome to the words guessing game #{username}"
        puts "Here is your first word"



        while user_input == "yes"

        array_words = ["apple", "Library", "Book", "Boat", "Boy", "Girl", "bag"]

        generate_random_word = array_words.sample
        generate_new_meaningless_word =generate_random_word.chars.shuffle.join("        ")

        

        p generate_new_meaningless_word

        match_the_word(generate_random_word)

        puts "Do you want to play again?"
        user_input = gets.chomp
        end
    end

    
    
    def match_the_word(generate_random_word)

        
        
        puts "Please guess the right word."
        player_guess_word = gets.chomp

        # if player_guess_word == "pass"
        #     p generate_new_meaningless_word
        #     player_guess_word = gets.chomp


        if
            player_guess_word != generate_random_word
            puts "you loose" 
        
        elsif 
            player_guess_word == generate_random_word
            puts "you win" 
            
            else
            puts "Do something"

    # #   
        end
    
    end

    



# player_guess_word == 'pass'
#         puts "Here is your new word."
#         p generate_new_meaningless_word
#         player_guess_word = gets.chomp   

main()
