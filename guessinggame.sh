#!/usr/bin/env bash

num_files=$(ls -l | wc -l)

echo "How many files are in the current directory?"
read ans

# source guessinggame.sh
# # guessinggame

function guessinggame {

  while [[ $num_files -ne $ans ]]
  do
    if [[ $num_files -gt $ans ]]
    then
      echo "Your guess was too high. Guess again:"
      read ans
    elif [[ $num_files -lt $ans ]]
    then
      echo "Your guess was too low. Guess again:"
      read ans
    fi
  done
  echo "Congradulations! Your guess is correct."
}
