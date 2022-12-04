#!/bin/bash

RED=$(tput setaf 1)
NC=$(tput sgr0)

if [ -f "../shipHub/electrical/.visitedFlag" ]
then
  clear
  echo
  echo "You walk back into electrical."
  if [ ! -f ../pockets/foundClues/electricalClue ]
  then
    echo "Yeah, surprisingly the wires didn't fix themselves."
    echo "Again, some of 'em all require some ${RED}hard ${NC} treatment, while others need to be treated ${RED}softly${NC}."
    echo "It looks like the blue and yellow wires will require a ${RED}softer ${NC}touch, and the others will require me to go a bit ${RED}hard ${NC}to properly fix."
  fi
  echo "Perhaps you can use this quiet time to grab ahold your bearings and review information."
  echo
  exit
fi

clear
echo
echo "You walk into the electrical management room. Another prime suspect for sabotage, as this is a massive part of what allows the ship to run."
echo "It does seem to have gotten dimmer, after all. Something definitely had to have happened here."
echo "Looking at the ${RED}wires in the electrical box${NC}, they've all been cut."
echo "Welp, I guess that just means I've gotta ${RED}link ${NC}'em back together, right?"
echo "Some of 'em will require some ${RED}hard ${NC} treatment, while others only need to be treated ${RED}softly${NC}."
echo "The red and pink wires are banged up pretty bad, but the yellow and pink ones look like they'll only need a little bit of tape."
echo "Once I'm done linking them, I'll have to ${RED}test the wires ${NC}to see if they're all linked up correctly."
echo
