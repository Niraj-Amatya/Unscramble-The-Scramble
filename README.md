# **Software Development Plan** #

## **Statement of Purpose and Scope**


#### ***Describe at a high level what the application will do***


#### ***Identify the problem it will solve and explain why you are developing it***   
Learning vocabulary may not be the most exciting thing kids like to do at school or at home. It is not only challenging for kids to learn and remember words but can be very frustrating for parent and teachers.

But by using interesting and fun ways to teach vocabulary words, educators and parent can increase kids interest and help with both memorization and retention.

This is where my Words Guessing Game can be helpful. As learning word can be easy and fun when it’s a game. This game makes learning words easy and challenging at the same time.


####  ***Identify the target audience***
This game will suit any age level. However; it is mostly targeted for kindergarten children who have basic level of understanding of words and can recognise alphabets. The age group for this game is between 4 to 7 years old. So hopefully, parents of this age group will use this app to teach their kids words at home. Also, kindergarten school teachers can use this app to teach their students learn new words at school. This app will make the journey of learning words a little bit easier and fun.


#### ***Explain how a member of the target audience will use it***
This game is very simple to use, as small kids are our main target. There are two players in this game. Let’s say Player1 and Player2. One of the player(Player1) will input the word through the terminal. The word will be encrypted and is not visible by another player(Player2). This word will be scrambled into meaningless word and printed into the screen. Player1 will then have three opportunity to guess the wright word. For each correct guess made, score is added and at the end of the game total score is printed. If the player cannot make the correct guess after third attempt, the right word is provided. In total one player, will get five words to guess. In the next round, the Player2 will input the guessing word and the Player1 will guess the word. Once the game for both player is over, the score will be compared and winner for the game will be announced.


## **Features**

### ***Develop a list of features that will be included in the application. It must include:***
   - THREE features 
   - Describe each features.


   ##### Masking with the user input: #####
   One of the player in my app has to input the word for another player to guess and match. When the user types the word in the terminal it should not be visible by another player. For this purpose, the app needs to be able to hide the word. I have used STDIN.noecho method with IO/console module to mask the word. So, every time the user will input the word it’s not visible by another player. Below is the cose snippets for this method.

 ```
user_input = STDIN.noecho(&:gets).chomp.upcase
 



   ##### Scrambling the word #####

    Another feature I have implemented in my app is to scramble the word into meaningless word. So basically, the word input by the user has to be broken down into characters. The characters then need to be shuffled and then join into the new word. The new word that will be printed will have no meaning. This is where another player will try to guess the right word from this scrambled word.

```
generate_new_meaningless_word = generate_random_word.chars.shuffle.join("               ")
```



   #### ***Ensure that your features include the following language elements and concepts:***
   - use of variables and the concept of variable scope
   - loops and conditional control structures
   - error handling







   ## **Implementation Plan** ##

   ##### 11 Nov 2019 _(Sunday 8:13pm)_ ##### 
The following [Trello Board](./images/20191111.png) demonstrated the app project planning status and tasks breakdown at the end of 11 Nov.
<img src="./images/20191111.png" alt="Trello Progress picture-2" />


 ##### 13 Nov 2019 _(Wednesday 8:13pm)_ ##### 
The following [Trello Board](./images/20191113.png) demonstrated the app project planning status and tasks breakdown at the end of 13 Nov.
<img src="./images/20191113.png" alt="Trello Progress picture-2" />


    