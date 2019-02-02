#!usr/bin/env bash
# File:guessinggame.sh

numFiles=$(ls -l | grep '^-' | wc -l)

echo "Enter your guess for the number of files in the current directory:"
read response

function helper  { 
  if [[ $1 -gt $numFiles ]] 
  then
    echo "The number is too high, try again!"
    read response
  elif [[ $1 -lt $numFiles ]]
  then 
    echo "The number is too low, try again!"
    read response
  fi
}

while [[ $response != $numFiles ]] 
  do 
    helper $response
  done 
 
echo "Congratulations the number of files in current directory is $numFiles."
