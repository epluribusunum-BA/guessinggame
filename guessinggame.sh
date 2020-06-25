#!/usr/bin/env bash

filecount=$(find . -maxdepth 1 -type f | wc -l)
guess=1
clear

function check {
  if [[ $response -eq $filecount ]]
  then
    clear
    echo " "
    echo "       Congratulations!!!        "
    echo "  You have won the Guessing Game      "
    echo " "
    guess=0
  elif [[ $response -lt $filecount ]]
  then
    clear
    echo " "
    echo "Your guess is too" 
    echo "    LOW         "
    echo " "
  else
    clear
    echo " "
    echo "Your guess is too" 
    echo "     HIGH          "
    echo " "
  fi
}

while [[ $guess -eq 1 ]] 
do
  echo "Please enter your guess of Files and press Enter: "
  read response
  check
done
