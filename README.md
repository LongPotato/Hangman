#Hangman Game

A simple 5 to 12 characters command line hangman game.

Greate practice for serialization and working with files in Ruby

###Features:

* User can save and load the game from YAML files.
* Words are randomly selected from outside text file.
* Stick figures!

###Sample output:

```
-----------------------------------------------
WELCOME TO HANGMAN
You can save the game anytime by typing 'save'.
You can quit the game anytime by typing 'quit'.
-----------------------------------------------
Please enter your name: potato
Do you want to load your previous game Potato (y/n)?: n

Word: _ _ _ _ _ _ _
Misses: 
Turns left: 10
Guess: r

Word: _ _ _ _ _ _ R
Misses: 
Turns left: 10
Guess: e

Word: _ _ _ E _ E R
Misses: 
Turns left: 10
Guess: y







_________

Word: _ _ _ E _ E R
Misses: Y
Turns left: 9
Guess: u
  
  /
  |    
  |
  |   
  |    
  |
__|______

Word: _ _ _ E _ E R
Misses: Y U
Turns left: 8
Guess: u
   ______
  /     |
  |    
  |
  |   
  |    
  |
__|______

Word: _ _ _ E _ E R
Misses: Y U
Turns left: 7
Guess: u
   ______
  /     |
  |    ( )
  |
  |   
  |    
  |
__|______

Word: _ _ _ E _ E R
Misses: Y U
Turns left: 6
Guess: d
   ______
  /     |
  |    ( )
  |     |
  |   
  |    
  |
__|______

Word: _ _ _ E _ E R
Misses: Y U D
Turns left: 5
Guess: c
   ______
  /     |
  |    ( )
  |    \|
  |     
  |    
  |
__|______

Word: _ _ _ E _ E R
Misses: Y U D C
Turns left: 4
Guess: quit
Good bye! 


```


