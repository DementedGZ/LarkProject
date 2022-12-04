#!/bin/bash

RED=$(tput setaf 1)
BLU=$(tput setaf 4)
CYN=$(tput setaf 6)
NC=$(tput sgr0)

if [ -f "../shipHub/reactor/.visitedFlag" ]
then
  clear
  echo
  echo "You walk back into the reactor chamber."
  if [ ! -f ../pockets/foundClues/reactorClue ]
  then
    echo "Manifolds are still locked, sadly. Again, unlocking them is easy."
    echo "Just need to ${RED}c${NC}o${RED}p${NC}y over whatever's in one console onto the other."
    echo
  fi
  echo "Perhaps you can use this quiet time to grab ahold your bearings and review information."
  echo
  exit
fi

clear
echo
echo "Ah, the reactor. I'm many things--a nuclear physicist is not one of them. Any meddling with this, and I could blow up the entire ship."
echo "After a quick inspection, everything would look right, but..."
echo "The manifolds. They're locked. Pretty weird stuff. At least it means I don't have to call ${CYN}[CYAN]${NC} or ${BLU}[BLUE]${NC} to mess with the reactor again..."
echo "Surprisingly, unlocking the manifolds is easy. All I've gotta do is ${RED}c${NC}o${RED}p${NC}y what's in one console onto the other."
echo
