# **Software Development Plan** #

## **Statement of Purpose and Scope**


### **Describe at a high level what the application will do**
The application is basically word guessing game for the kids. It allows two users two play together. One is the guesser of the word and another is the provider of the word. The provider's word will be shuffled into meaningless word and the guesser now has to guess the right word.

The game allows users especially kids entertain and engaged. And at the same time makes learning and remembering the words fun and interesting. Also, this game has competitive factor as well, as users will compete against each other and has to score higher to win another player.




### **Identify the problem it will solve and explain why you are developing it** 
Learning vocabulary may not be the most exciting thing kids like to do at school or at home. It is not only challenging for kids to learn and remember words but can be very frustrating for parents and teachers as well.

 By using interesting and fun ways to teach vocabulary words,educators and parent can increase kids interest and help with both memorization and retention.

This is where my game can be helpful, as learning word can be easy and fun when it’s a game. This game makes learning words easy and challenging at the same time.
By trying to rearrange the shuffled word in order, kids will develop a better understanding of words and will have in their memory for longer time than the tradition way of memorizing it.

By developing this game, I am trying to solve my own problem at home. Having a five-year kid, I completely understand the challenges parents have to face, as I go through them every day. I know this game is not the ultimate solution for this problem, but I am hoping it will make the journey little bit less stressful.



###  **Identify the target audience**
This game is mostly targeted for kindergarten children who have some basic level of understanding of words and can recognise alphabets in English. The age group for this game is between 4 to 7 years old. So hopefully, parents of this age group will use this app to teach their kids new words at home. Also, kindergarten school teachers can also use this app to teach their students learn new words at school. This app will make the journey of learning words a little bit easier and fun.

Also, adults at work or home can use this app to challenge their friends and families to see if they have good understanding of words and vocabulary. 



### **Explain how a member of the target audience will use it**
This game is very simple to use, as small kids are our main target. There are two players in this game. Let’s say Player_1 and Player2. One of the player(Player_1) will input the word through the terminal. The word will be encrypted and is not visible by another player(Player_2). This word will be scrambled into meaningless word and printed into the screen. Player_1 will then have three opportunity to guess the wright word. For each correct guess made, score is added and at the end of the game total score is printed. If the player cannot make the correct guess after third attempt, the right word is provided. In total one player, will get five words to guess. In the next round, the Player2 will input the guessing word and the Player1 will guess the word. Once the game for both player is over, the score will be compared and winner for the game will be announced.


## **Features**

   ### **Should accept username as input**
   The user should be able to input their name from the command line.

   ### **Provide a detail information about the game**
   At the start of the game, it should provide a detail information about the game. The game should clearly mention who is the guesser and who is the word provider by using the player names and also using the colours to separate them.

   ### **Mask the user input**
   One of the player in the game has to provide the word. The game should be able to mask the word so that it is not visible in the terminal, while this user is typing. As the game is all about guessing the right word, another player should not be able to see the word.

### **Scrambling the word**
The game should be able to break the word into characters and shuffle it and join them into one meaningless word and output it in the screen.


### **Maximum guess limit**
The game should allow user to guess the word only certain number of times. This can be done by pre-defining the maximum guess limit and then using loops. Also, it should inform user, number of guess left each time user makes the wrong guess.


### **Match with the right word**
Every time a guess is made, the program should match it with the actual word and print if right or wrong guess was made.


### **Print the right word** 
If the user is not able to guess the word within the attempts allowed, it should output the right word that another user had provided.

### **Score update and winner announced**
Every time right guess is made by the users; scores will need to be updated for both the players. At the end of the game winner should be announced by comparing the score for both the players.

### **Set maximum number of words allowed** 
For each game, only certain number of words should be allowed to play. Once that number is met it should end the game.


## **User Interaction and Experience**

### **How the user will find out how to interact with / use each feature**
1. The user will need to enter their name and will be greeted by the welcome screen with their names. The welcome screen will have a brief about the program. It will also clearly mention which player will be the guessor of the word and who will be the provider of the word. Different players will have different colour in their name.

    ![Screenshot](/screenshots/Screenshot1.png)

2. Before entering the word, the program will alert user to input only string. Also, it will inform user that words typed in the screen will not be visible.

    ![Screenshot](/screenshots/Screenshot2.png)

3. Every time user will make wrong guess, it will tell how many guesses are left.

    ![Screenshot](/screenshots/Screenshot3.png)

4. Once one of the player plays the game, the program switches the player and detail information about who is the provider and who is the guesser is provided to the users with their names, so that their is no confusion.

    ![ScreenShot](/screenshots/Screenshot4.png)


### **How the user will interact with / use each feature**

1. User will have to input their name from the terminal through ARGV command line.
2. The program only takes string, so the user will be prompted to input only strings.
3. Another user will be prompted to guess the word.
4. The user can only guess for pre defined number of times.
5. If a wrong guess is made; the user is asked to enter the word again. Right answer is displayed if user can not make the right guess.
6. After every right guess, the first user will be asked to enter the word again.
7.  The application will switch the player after the the first part of the game is over.
8. The whole process will start again.
9. Score is printed and winner is announced.

### **How errors will be handled by the application and displayed to the user**

#### ***Name input error***

The application was running even if the players were not entering their names through ARGV command. So the program was running but with my game, user input is necessary as they are playing against each other. To solve this porblem a condition with if/else was created, where if the players don't input their name from the ARGV command line, the application will ask to input the name for both the players. This condition is run until the players will input their names. This is how message will be displayed in the screen:

![Screenshot](/screenshots/Screenshot7.png)


#### ***Invalid data types error***
Every time user will input data types other than strings, an error message is printed in the screen. This is to inform the user what type of data types are accepted. Also, this will handle the error later on in the program. This is how message will be displayed in the screen:

![Screenshot](/screenshots/Screenshot5.png)

#### ***Unidentified error within the program***
For any error within the program that is not expected 'begin' and 'rescue' will be used. So instead of getting error message from the program, a user firendly message will be displayed. This is the screenshot of the message displayed to the user:

![Screenshot](/screenshots/Screenshot6.png)


## **Control Flow Diagram**
The control flow diagram is the blueprint for the programming. The diagram was revised through out the project, as the project was developing.

![image](/documentation/control-flow-diagram/control-flow-diagram.jpeg)"Control Flow Diagram"






   