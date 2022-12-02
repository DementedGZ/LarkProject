#!/bin/bash
RED=$(tput setaf 1)
NC=$(tput sgr0)
if [ -f "../shipHub/medbayRoom/.visitedFlag" ]
then
  clear
  echo
  echo "You walk into medbay"
  if [ ! -f ../../../pockets/foundClues/medbayClue ]
  then
    echo "I still need to do my medbay scan."
    echo "I also need to check the vials and ${RED}r${NC}e${RED}m${NC}ove the one that has been altered."
    echo "Remove the altered vial by c${RED}he${NC}cking ${RED}a${NC}ll of the vials and its ${RED}d${NC}e${RED}tail${NC}s"
  else
    echo "There is nothing else to do in this room."
  fi 
else 
  echo
  echo "Review the information that is given." 
  echo "Complete your medbay scan and ${RED}r${NC}e${RED}m${NC}ove the vial that was tampered with by the imposter."
  echo "Remember to remove the altered vial by c${RED}he${NC}cking ${RED}a${NC}ll of the vials and its ${RED}d${NC}e${RED}tail${NC}s"
fi
  
