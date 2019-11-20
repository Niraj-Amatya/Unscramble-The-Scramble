# **Unscramble The Scramble**

Githhub Repo: https://github.com/Niraj-Amatya/Unscramble-The-Scramble

Contributor: https://github.com/Niraj-Amatya



## **Description**
Unscramble The Scramble is the word guessing game. This game is targeted generally for kindergarten kids, however; it will suit any age groups. The game aims to make learning and retaining the words and vocabulary less stressful and more fun both for kids and parents. As this game can be played between the friends by challanging each other, it will make it competitive aswell.

The game has two players.One player will input the word which will be than scrambled into meaningless word and another player has to unscramble this word. Whoever makes the must guesses will win the game.


## **Documentation for the Project**

1. **[Software Development Plan](https://github.com/Niraj-Amatya/Unscramble-The-Scramble/blob/master/documentation/software-develeopment-plan.md/)**

2. **[Development Log](https://github.com/Niraj-Amatya/Unscramble-The-Scramble/blob/master/development-log.md/)**


 3. **[Control Flow Diagram](https://github.com/Niraj-Amatya/Unscramble-The-Scramble/blob/master/documentation/control-flow-diagram/control-flow-diagram.jpeg/)**

 4. **[Help File](https://github.com/Niraj-Amatya/Unscramble-The-Scramble/blob/master/help-file.md/)**

 6. **[TEST APPLICATION](https://github.com/Niraj-Amatya/Unscramble-The-Scramble/blob/master/test-application.md/)**

 7. **[GEMFILE](https://github.com/Niraj-Amatya/Unscramble-The-Scramble/blob/master/Gemfile/)**

 8. **[INDEX FILE.rb](https://github.com/Niraj-Amatya/Unscramble-The-Scramble/blob/master/index.rb/)**




## **Implementation Plan**


| Features                                 	|                                                                                                     Checklist                                                                                                    	| Priority 	| Deadline       	|
|------------------------------------------	|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:	|---------:	|----------------	|
| String only data types                   	| 1. Only string is accepted as a data type. <br>2. Should receive error message if any other data type is entered. <br>3. Should ask to input correct data type.                                                  	|     High 	| 13th Nov, 2019 	|
| Mask the user input                     	|                                                                          1. Word input by Player_1 should be invisible in the terminal.                                                                          	|     High 	| 14th Nov, 2019 	|
| Scramble the word                        	|                                  1. Word needs to split into characters.<br>2. Characters need to be shuffled.<br>3. Shuffled characters need to be joined and create scrambled word.                                 	|     High 	| 17th Nov, 2019 	|
| Number of guesses allowed for every word 	| 1.Maximum number of guess allowed should be pre-defined.<br>2.With every wrong guess user should be informed about number of guess <br>left.<br>3. After all three guesses, it should output the right word.         	| Medium   	| 18th Nov, 2019 	|
| Switch the game between players          	| 1. The application should clearly inform the users about their role i.e<br>which one is the provider of the word and which one is guesser.<br>2.This should be applied to every functions later in the game.<br> 	| Medium   	| 19th Nov, 2019 	|
| Score Update                             	| 1. Score should be updated with every right guess.<br>2. It should not display until the game is finished for both players.<br>3. Scores will be compared between the players and winner will be displayed       	| Low      	| 18th Nov, 2019 	|



## **Status Update**

| Sr. No. | Date/Day/Time                     | Title                                 | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
|---------|-----------------------------------|---------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 1       | 9th Nov, 2019 Saturday 1:30 pm    | Terminal App Idea                     | On week 4 Saturday 9th November, I, spoke with Bianca for my terminal apps. I decided to make the Words Guessing game.  The game would basically generate scrambled words from randomly, picked words from the collection of words array. The  user would have to correctly guess the right word. Words will be either picked from seperate files that will have collection  of words or use Faker. Another alternative was to use API to get words from the  Dictionary or other sources from  Internet. The game will have different levels such as Easy, Difficult and really Hard. It will also score user  depending upon the right guess they make. I was advised by Bianca to start with just the basic functionality of the app  which will be the Donut for the app. I completely agree with her so planning to start with the basic features of the app that  will make it functional and do what it intends to do in the basic level. |
| 2       | 13th Nov, 2019 Wednesday 12:15 am | Major change with the functionality   | As I was developing the game, I realised that if I am making game for the kids it should be fun and challenging as well. Therefore; I decided to introduce two players in my game that will challenge each other and there will be winner at the end. So  I won't be getting words from other resources. Instead one player will input the word which will be shuffled and scrambled into meaningless word. The other player will have to guess the right word to score points. After one player will finish with guessing,  the game will switch the players and another player has to guess the word. Both the players score will be update at the end and winners will be decided.  I discussed my idea with Bianca and Alex our senior dev and lecturer on 14th Nov 2019, Thursday. They were happy with the whole concept and got a green signal.                                                                         |
| 3       | 15th Nov, 2019 Friday 3: 20 pm    | Struggling with switching the players | Although I have finished most part of the game; switching between the players have been really challenging for me. I spoke with Alex, our Senior dev about the issue. He advised me to use methods in my game. As I am not comfortable with using methods, I am bit hesitant. I am trying for other possible ways to do it. I haven't come up with any solutions yet.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| 4       | 16th Nov, 2019  Saturday 7:30 pm  | Switching player successfull          | Finally I am able to switch the players in the game.  Thanks to Alex, who taught me how to use methods today in the class. I am  really happy with the output.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |





## **Project Management: Trello**

**[Trello Link](https://trello.com/b/MEU51lRk/unscramble-the-scramble/)**

Trello Software is used to track the progress of the application. Any changes with the features, checklists, deadlines and time-frame for each feature are updated in the trello. 

#### 11th Nov, 2019 (Saturday, 7:12 pm)
The following [Trello Board](/images/Trello1.png) demonstrated the app project planning status and tasks breakdown.
<img src="./images/Trello1.png" alt="Trello Progress picture-1" />

#### 13th Nov, 2019 (Wednesday, 1:30pm)
The following [Trello Board](/images/Trello2.png) demonstrated the app project planning status and tasks breakdown.
<img src="./images/Trello2.png" alt="Trello Progress picture-2" />

#### 16th Nov, 2019 (Saturday, 9:18pm)
The following [Trello Board](/images/Trello3.png) demonstrated the app project planning status and tasks breakdown.
<img src="./images/Trello3.png" alt="Trello Progress picture-3" />

#### 19th Nov, 2019 (Tuesday, 2:02pm)
The following [Trello Board](/images/Trello4.png) demonstrated the app project planning status and tasks breakdown.
<img src="./images/Trello4.png" alt="Trello Progress picture-2" />

#### 20th Nov, 2019 (Wednesday, 3:05pm)
The following [Trello Board](/images/Trello5.png) demonstrated the app project planning status and tasks breakdown.
<img src="./images/Trello5.png" alt="Trello Final Project picture-2" />

