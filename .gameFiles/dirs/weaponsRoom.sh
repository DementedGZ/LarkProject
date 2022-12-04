#!/bin/bash

RED=$(tput setaf 1)
NC=$(tput sgr0)

clear
echo

if [ -f "../shipHub/weaponsRoom/.visitedFlag" ]
then
  clear
  echo
  echo "You walk back into the weapons room."
  if [ ! -f pockets/foundClues/weaponsClue ]
  then
    echo "Somehow, walking out and then back in hasn't handled the 'big space rock' problem."
    echo "Aim through the scope, and ${RED}r${NC}e${RED}m${NC}ove those meteors."
  fi
  echo "Perhaps you can use this quiet time to grab ahold your bearings and review information."
  echo
  exit
fi

echo "Usually we don't have to use the weapons here much. Space debris is common, but its not enough to put a dent into this ship."
echo "Typically, its meteors. And, peering out... we've got meteors in our course. I couldn't tell just standing here, but, yeah, we're not moving."
echo "What kinda idiot would chart our course anywhere close to where a set of asteroids would be...?"
echo "Either way, I've just gotta ${RED}stare through the turret's scope${NC} and ${RED}r${NC}e${RED}m${NC}ove those bits of rock in front of us."
echo
