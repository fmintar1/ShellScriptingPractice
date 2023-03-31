#! /usr/bin/bash

# ECHO COMMAND
# echo Hello World!

# VARIABLES
# UPPERCASE by convention
# Letters, numbers, and underscores only
# NAME="Freddy"
# echo "My name is $NAME"

# USER INPUT, SIMILAR TO SCANNER
# read -p "Enter your name: " NAME
# echo "Hello $NAME, nice to meet you!"

# IF STATEMENT
# if [ "$NAME" == "Freddy" ]
# then
#    echo "Your name is Freddy"
# fi

# IF ELSE
# if [ "$NAME" == "Freddy" ]
# then
#     echo "Your name is Freddy"
# else   
#     echo "Your name is not Freddy"
# fi

# ELSE IF
# if [ "$NAME" == "Freddy" ]
# then
#     echo "Your name is Freddy"
# elif [ "$NAME" == "Fred" ]
# then
#     echo "Your name is Fred"
# else
#     echo "Your name is neither Freddy or Fred"
# fi

# COMPARISON (Operators)
# val1 -eq val2 if values are equal
# val2 -ne val2 if values aren't equal
# val1 -gt val2 if val1 > val2
# val1 -ge val2 if val1 >= val2
# val1 -lt val2 if val1 < val2
# val1 -le val2 if val1 <= val2

# NUM1=6
# NUM2=5
# if [ $NUM1 -gt $NUM2 ]
# then
#     echo "$NUM1 is greater than $NUM2"
# else
#     echo "$NUM1 is less than $NUM2"
# fi

# FILE CONDITIONS
# -d file if file is directory
# -e file if file exists
# -f file if provided string is a file
# -g file if group id is set on a file
# -r file if file is readable
# -s file if file has non-zero size
# -u file if user id is set on a file
# -w file if file is writeable
# -x file if file is executable

# FILE="test.txt"
# if [ -f "$FILE" ]
# then
#     echo "$FILE is a file"
# else
#     echo "$FILE is NOT a file"
# fi

# if [ -d "$FILE" ]
# then
#     echo "$FILE is a directory"
# else
#     echo "$FILE is NOT a directory"
# fi

# CASE STATEMENTS
# read -p "Are you 21 or over? Y/N " ANSWER
# case "$ANSWER" in 
#     [yY] | [yY][eE][sS])
#         echo "You can have a beer :)"
#         ;;
#     [nN] | [nN][oO])
#         echo "No beer for you!"
#         ;;
#     *)
#         echo "Please input the correct answer"
#         ;;
# esac

# SIMPLE FOR LOOP
# NAMES="Freddy Bobby Yoga Revil"

# for NAME in $NAMES
#     do
#         echo "Hello $NAME"
# done

# FOR LOOP TO RENAME FILES
# FILES=$(ls *.txt) # * is wild card, all files with extension txt will be put in FILES
# NEW="new" # rename each one to new - current name of the file

# for FILE in $FILES
#     do
#         echo "Renaming $FILE to new-$FILE"
#         mv $FILE $NEW-$FILE #renaming with mv
# done

# GOOD FOR RENAMING HUNDREDS OF FILES EASILY

# WHILE LOOP - READ THROUGH A FILE LINE BY LINE
# LINE=1
# while read -r CURRENT_LINE # read line by line and used CURRENT_LINE to store lines
#     do
#         echo "$LINE: $CURRENT_LINE" 
#         ((LINE++))
# done < "./new-1.txt" # This indicates that we are reading from new-1.txt file

# FUNCTION
# function sayHello() {
#     echo "Hello World"
# }

# sayHello

# FUNCTION WITH PARAMETER
# function greet() {
#     echo "Hello, I am $1 and I am $2" # positional parameter where 1 is Freddy and 2 is 33
# }

# greet "Freddy" "33" # 1 is Freddy and 2 is 33

# CREATE FOLDER AND WRITE TO A FILE
# mkdir hello
# touch "hello/world.txt"
# echo "Hello World" >> "hello/world.txt"
# echo "Created hello/world.txt"

# set the directory path

# FILE REDIRECTION or USE CAT

# LINE=1
# cat new-1.txt | while read -r CURRENT_LINE #use cat
#     do
#         echo "$LINE: $CURRENT_LINE"
#         ((LINE++))
# done

# OR

# LINE=1
# while read -r CURRENT_LINE
#     do
#         echo "$LINE: $CURRENT_LINE"
#         ((LINE++))
# done < "hello/world.txt" # use file redirection

# READ FILE INSIDE A DIRECTORY

# LINE=1
# while read -r CURRENT_LINE
#     do
#         echo "$LINE: $CURRENT_LINE"
#         ((LINE++))
# done < "hello/world.txt"

# OR

# LINE=1
# cat hello/world.txt | while read -r CURRENT_LINE
#     do
#         echo "$LINE: $CURRENT_LINE"
#         ((LINE++))
# done