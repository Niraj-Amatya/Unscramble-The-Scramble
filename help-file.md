# **Installation Instruction**

#### ***1. Instructions***
Click the link below and colone Unscramble the Scramble game git repository into your local computer. You can  clone or download it from the Github website by clicking in the top right hand corner. The button colour is green.

```
$ git clone https://github.com/Niraj-Amatya/Unscramble-The-Scramble
```

#### ***2. Install two gems: colorize and artii.***

```
$ gem install colorizr
```
```
$ gem install artii
```

OR

#### ***3. Install bundler.***
```
$ install bundler
```
#### ***4. Once 'bundler' has been installed, enter the following code to install the gems required for the application.***
```
$ bundle install
```


### **Run options**
Run the application by inputting following commands:
```
ruby index.rb
```
ALternativelly, give both the players name
```
ruby index.rb player_1_name player_2_name
```

Or 
Alternatively, you can run the application with the bash script.

To do so you will need to run the following line of code before running the bash script.
```
$ chmod u+x run.sh
```
Then run the bash script
```
$ ./script.sh
```

### **System Requirement**
This application has been developed on Mac Os Mojave version 10.14.1. And has only been tested in Mac operating sytems.

### **Different features of the application**
Unscrumble the Scrumble is a word guessing game terminal app, mostly targeting the young kids in the Knidergarten."  

    1. There are two players, Player_1 and Player_2.

    2. Users are expected to give their name in the beginning of the game."

    3. For the first part of the game Player_1 will input the word which will then be scrumbled and printed    in the screen. Player_2 will have to guess he correct word. The input from the Player_1 is masked.

    4. It is necessary to input only strings otherwise program will not run further and give error      until right data type is not input.

    5. Each game will have 5 words to guess.

    6. The Player will have three chance to guess the right word and for every right guess, the Player     will score 1 point.

    7. After all three wrong guesses, right answer will be printed. But no point is scored.

    8. With the fifth word the first part of the game will end.

    9. New game will start without ending the game in terminal. This is just the continuation of the second part of the game.

    10. In this part of the game Player_2 will input the word and Player_1 has to guess the word.

    11. Scores will be updated and printed at the end of the game. User will be announced at the end.   

    12. Messages will prompt for Players guide.



