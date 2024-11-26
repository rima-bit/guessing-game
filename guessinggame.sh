#!/bin/bash

# Function to count files in the current directory
function file_count {
    echo $(ls -1 | wc -l)
}

# Main guessing game logic
echo "Welcome to the Guessing Game!"
correct_count=$(file_count)  # Get the correct number of files

while true; do
    echo "Guess how many files are in the current directory:"
    read guess

    if [[ $guess -eq $correct_count ]]; then
        echo "Congratulations! You guessed it right!"
        break
    elif [[ $guess -lt $correct_count ]]; then
        echo "Too low! Try again."
    else
        echo "Too high! Try again."
    fi
done
