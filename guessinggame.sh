#!/usr/bin/env bash
function guessinggame()
{
# Generate a random number between 1 and 100
secret_number=$((RANDOM % 100 + 1))
guess=0
attempts=0

echo "Welcome to the Guessing Game!"
echo "I'm thinking of a number between 1 and 100."

# Loop until the user guesses the correct number
while [ $guess -ne $secret_number ]; do
    read -p "Enter your guess: " guess
    attempts=$((attempts + 1))

    # Validate that the input is a number
    if ! [[ $guess =~ ^[0-9]+$ ]]; then
        echo "Please enter a valid number."
        continue
    fi

    if [ $guess -lt $secret_number ]; then
        echo "Too low! Try again."
    elif [ $guess -gt $secret_number ]; then
        echo "Too high! Try again."
    else
        echo "Congratulations! You've guessed the number $secret_number in $attempts attempts."
    fi
done
}
guessinggame

