#!/bin/bash
# Purpose: Guess the number of files in the pwd.

get_guess () {
echo "How many files are in the current directory?"
read
}

files=`ls -l | grep ^- | wc -l`
get_guess
while true; do
    if [ $files -eq $REPLY ]; then
        echo "You are right!"; exit 0
    elif [ $REPLY -gt $files ]; then
        echo "You guessed too high..."
        get_guess
    else
        echo "You guessed too low..."
        get_guess
    fi
done


