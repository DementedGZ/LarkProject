#!/bin/bash

RED=$(tput setaf 1)
NC=$(tput sgr0)

clear
echo
echo "You walk back into the admin room. Nothing seems out of place."
if [ ! -f ../pockets/foundClues/adminClue ]
then
  echo "Man, where could I have put my ID? It's gotta be in my ${RED}pockets ${NC}, right? And I still can't get that ${RED}cat ${NC}obsession out of my head..."
  echo
fi 
echo "Perhaps you can use this quiet time to grab ahold your bearings and review information."
echo
