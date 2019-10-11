#!/bin/bash
# Purpose: Guess the number of files in the pwd.


echo "How many files are in the current directory?"
read
files=`ls -l | grep ^- | wc -l`

while true; do
    if [ $files -eq $REPLY ]; then
        echo "You are right!"; exit 0
    elif [ $REPLY -gt $files ]; then
        echo "You guessed too high..."
        echo "How many files are in the current directory?"
        read
    else
        echo "You guessed too low..."
        echo "How many files are in the current directory?"
        read
    fi
done


