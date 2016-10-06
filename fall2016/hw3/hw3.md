---
layout: homework
title: Homework 3
---

# Homework 3

## Introduction

In this homework you will practice using classes and objects in Python.

## General Instructions

**This is an individual assignment.**

Collaboration at a reasonable level will not result in substantially similar code. Students may only collaborate with fellow students currently taking CS 2316, the TA's and the lecturer. Collaboration means talking through problems, assisting with debugging, explaining a concept, etc. You should not exchange code or write code for others.

Notes:

- Include a comment with your name and GTID at the top of all Python files.
- *Do not wait until the last minute* to do this assignment in case you run into problems.
- Pay close attention to whether problems require you to print or return the results! Printing instead of returning or vice versa will result in a point deduction.
- Name all functions as specified in the instructions.
- Unless otherwise stated, you can assume inputs will be valid in this assignment (i.e. error checking is not required).
- In a Python module you must define a value (such as a function) before referencing it. So if you call function A from function B, the definition of function A must come before the definition of function B in the file.

## Problem Description
Your best friend is a bonafide cat person. She loves cats, but is deathly allergic. So for her birthday, you’ve decided to make a crazy cat lady simulator! So start coding!

## Solution Description
Write a Python module in 'hw3.py' that includes the following:
Test your code with the docstrings, but don't worry if they fail because you added more than what was necessary. They are simply to provide an example to keep you on the right track for this homework

```Python
class Cat:
    """An object of class Cat will have a minimum of 8 methods: __init__, __eq__, __str__, __repr__, feed, and at least three methods of your choice.
    
    The Cat class has to keep track of the total number of cats owned as num_cats.
    Each cat must have a name, a color, and optionally a favorite food that defaults to “Meow Mix.” Each cat also has a boolean attribute variable called is_hungry which is initially True and an attribute happiness: an int that represents the cat’s level of happiness (higher = happier) and starts at 1. Cats may also have as many optional parameters and variables as you would like.
    """
```

```Python
def __init__(self, name, color, fav_food="Meow Mix"):
    """Initialize a Cat object, saving as instance attributes its name, color, favorite food (defaults to “Meow Mix”), and any other attributes you would like.
    Prints a message saying that a new cat has been acquired and what its name is.
    
    Parameters: 
    self
    name: String
    color: String
    fav_food: String -- is “Meow Mix” if not given
    Etc. of your choosing(Please remove this line and document your own parameters here)
    age: Int -- representing age in years of the Cat    ##not required, just example
    """
```

```Python
def __eq__(self, other):
    """Compares two Cats to test equality. Cats should be equal if their names and colors are the same.
    Parameters:
    self
    other: Cat -- the second Cat you want to use

    Return: Boolean -- True if the Cats were equal, False otherwise
    
    Usage Examples:
    >>> cat = Cat("Sprinkles", "white")
    >>> other_cat = Cat("Princess Lady", "white", "Fancy Feast")
    >>> cat == other_cat
    False
    """
```

```Python
def __repr__(self):
    """Describe the Cat. Return a string that lists the pairs of attribute/values for that Cat. Including: name, color, is_hungry, fav_food, age, happiness, etc. (attributes you add for creativity’s sake or to make your additional methods work)
    
    Parameters: self
    
    Return:
    info_list: String -- Start with a list of tuples where each tuple has 2 items, an attribute followed by its value. Then convert to a string and return it.
    
    Usage Examples:
    >>> cat = Cat("Garbage", "grey")    ### It is OK if this fails after you add additional attributes to your cats.
    >>> cat                             ### Just maintain the same format for additional attributes as well
    [('name', 'Garbage'), ('color', 'grey'), ('fav_food', 'Meow Mix'), ('is_hungry', 'True'), ('happiness', 0]
    """
```

```Python
def __str__(self):
    """Gives an aesthetically pleasing representation of the referenced cat object. All cats will have the same representation.
    
    Parameters: self
    
    Return: A String containing a cat emoji (of your choosing) and a newline character and the cat's name
    Usage Examples:
    >>> cat = Cat("Sprinkles", "white")
    >>> print(cCat)
    =^.^=
    Sprinkles
    """
```

```Python
def feed(self, food):
    """Give food to a Cat, changing its is_hungry value to False, and when given its favorite food, a cat’s happiness will increase by 1.
    This method should print that the cat has been fed and if the cat is fed its favorite food, an additional message will say that the cat is noticeably happier.

    Parameters:
    self
    food: String -- the food being given to the cat
    Return: None
    
    Usage Examples:
    >>> new_cat = Cat("Princess Lady", "white", "Fancy Feast")
    >>> new_cat.feed("Fancy Feast")
    Princess Lady ate Fancy Feast and is no longer hungry.
    Princess Lady seems happier!
    """
```

#### Write at least 2 more methods for Cat objects with documentation. Be creative and have fun. Bonus points can be awarded at the discretion of your TA for exceptional creativity.

### Main

```Python
def main:
"""Main asks for a username using user input.
Asks <username> to begin the game and uses a while loop to continuously accept user input until user quits the sim with “quit.”
"quit" and "census" are user input calls that will end the sim and call the __repr__ method for ALL cats, respectively.
Every output printed to the console and everything typed by the user should be saved to a text file named log.txt while the main loop is running.
"""
```
So my first line of log.txt should be `‘Welcome to Cat Sim v1.0. What is your name?”` and the last line would be `“Thanks for playing, Jon!”`

User input strings will perform functions and methods written in the script without using classic function calls, so an example would be (bold text is repl prompt from input(), underlined text is performed at this time, but not displayed to user):

```Text
>>>Welcome to Cat Sim v1.0. What is your name? Jon
‘Hello Jon.’
>>>What would you like to do next? Adopt
>>>Congrats! What’s your new cat’s name? Garfield
>>>What color? Orange
>>>What’s its favorite food? lasagna
Garfield = Cat(“garfield”, “orange”)
‘Garfield is now happily in your home!’
>>>What would you like to do next? Feed Garfield
>>>Feed what food?
garfield.feed(“lasagna”)
‘Garfield has been fed and is no longer hungry’
‘That food was great! Garfield looks happier than before!’
>>>What would you like to do next? Quit
‘Thanks for playing, Jon!’
>>>
```

The following may be helpful for capturing print statements to the console:
- Write a print statement whenever necessary
    - Immediately after the print statement, append the same output to log.txt
- When the user types to the console, append their input string to log.txt
    - Then respond appropriately to whatever that input was
- When your program ends, be sure that your log.txt has been closed




User input: “census” calls the `__repr__` method on all instances of cats.

## Additional Documents

### README.txt

A text file containing the instructions to your sim:
each line in the text document should have the user input followed by the python code it calls.
Don't forget that "census" and "quit" are required for all README.txt files.
Ex: 

```Text
adopt  =  Cat(userin(“Congrats! What’s your new cat’s name?”), userin(“What color?”), userin(“What’s its favorite food?”))
feed <cat>  =  <cat>.feed(userin(“Feed what food?”))
census  =  <cat> … ##for all cats that exist
```


## Submission Instructions

## Verify Your T-Square Submission!

Practice safe submission! Verify that your HW files were truly submitted correctly, the upload was successful, and that your program runs with no syntax or runtime errors. It is solely your responsibility to turn in your homework and practice this safe submission safeguard.

- After uploading the files to T-Square you should receive an email from T-Square listing the names of the files that were uploaded and received. If you do not get the confirmation email almost immediately, something is wrong with your HW submission and/or your email. Even receiving the email does not guarantee that you turned in exactly what you intended.
- After submitting the files to T-Square, return to the Assignment menu option and this homework. It should show the submitted files.
- Download copies of your submitted files from the T-Square Assignment page placing them in a new folder.
- Re-run and test the files you downloaded from T-Square to make sure it's what you expect.
- This procedure helps guard against a few things.

    - It helps insure that you turn in the correct files.
    - It helps you realize if you omit a file or files. Missing files will not be given any credit, and non-compiling homework solutions will receive few to zero points. Also recall that late homework will not be accepted regardless of excuse. Treat the due date with respect.  Do not wait until the last minute! (If you do discover that you omitted a file, submit all of your files again, not just the missing one.)
    - Helps find syntax errors or runtime errors that you may have added after you last tested your code.
    
## Grading

 (5) Every Cat has a name
 
 (40) Cat class has at least 8 working methods, including: init, eq, repr, str, feed
 
 (15) main loop executes and creates a properly formatted log.txt (-2 if not formatted correctly, but still present)
 
 (25) user interactive sim works according to instructions of README.txt and ends on ‘quit’ (if README.txt is missing, but sim works according to main loop, -10)
 
 (15) ‘census’ prints ALL attributes/variables for ALL cats. (-2 points for each attribute missing)
 

 (up to 5) BONUS: exceptional creativity at discretion of grading TA

 (-100) if Python 2 used instead of Python 3!! Make sure you have Miniconda installed with Python 3!
