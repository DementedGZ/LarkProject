#!/bin/bash
RED=$(tput setaf 1)
NC=$(tput sgr0)

if [ -f "../shipHub/medbayRoom/.visitedFlag" ]
then
  clear
  echo "You walk into medbay"
  if [ ! -f ../../../pockets/foundClues/medbayClue ]
  then
    echo "I still need to do my medbay scan."
    echo "I also need to check the vials and ${RED}r${NC}e${RED}m${NC}ove the one that has been altered."
  else
    echo "There is nothing else to do in this room."
  fi
else 
  echo"Review the information that is given." 
  echo "Complete your medbay scan and check the vial."
fi
clear
  
