#Hangman Game

A simple 5 to 12 characters command line hangman game.

Greate practice for serialization and working with files in Ruby

###Features:

* User can save and load the game from YAML files.
* Words are ramdonly selected from outside text file.

###Sample output:

```
-----------------------------------------------
WELCOME TO HANGMAN
You can save the game anytime by typing 'save'.
You can quit the game anytime by typing 'quit'.
-----------------------------------------------
Please enter your name: potato
Do you want to load your previous game Potato (y/n)?: y

Word: O R W _ _ _
Misses: I A
Turns left: 8
Guess: r

Word: O R W _ _ _
Misses: I A
Turns left: 8
Guess: l

Word: O R W _ L L
Misses: I A
Turns left: 8
Guess: o

Word: O R W _ L L
Misses: I A
Turns left: 8
Guess: x

Word: O R W _ L L
Misses: I A X
Turns left: 7
Guess: quit
Good bye! 

```


