#!/bin/bash

RED=$(tput setaf 1)
NC=$(tput sgr0)

if [ -f "../shipHub/engineRoom/.visitedFlag" ]
then
  clear
  echo
  echo "You walk back into the engine room."
  if [ ! -f ../pockets/foundClues/engineClue ]
  then
    echo "The gas can's still just sitting there."
    echo "Unironically, I actually did expect it to fill up while I was gone, but not a soul has ${RED}touch${NC}ed it while I was gone."
    echo 
  fi
  echo "Perhaps you can use this quiet time to grab ahold your bearings and review information."
  echo
  exit
fi

clear
echo
echo "Even big ships need an engine to run, and this is ours. And just like an engine, it's gonna need fuel too."
echo "It doesn't take a long time to do, but it still looks like the tank is running on empty."
echo "Doesn't look like anyone has even ${RED}touch${NC}ed the gas can at all. Guess it's upon me to fill it."
echo
