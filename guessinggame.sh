#!/usr/bin/env bash

num_files=$(ls -l | wc -l)

echo "How many files are in the current directory?"
read guess

function guessinggame {

  while [[ $guess -ne $num_files ]]
  do
    if [[ $guess -gt $num_files ]]
    then
      echo "Your guess was too high. Guess again:"
      read guess
    elif [[ $guess -lt $num_files ]]
    then
      echo "Your guess was too low. Guess again:"
      read guess
    fi
  done
  echo "Congradulations! Your guess is correct."
}

guessinggame
