#!/bin/bash

fillcount=$(ls gasCan | wc -l)

RED=$(tput setaf 1)
BLU=$(tput setaf 4)
NC=$(tput sgr0)

clear

if [ $fillcount == 0 ] 
then
  echo
  echo "I can't exactly gas up an engine with an empty can, and the it's not gonna fill up itself."
  echo "I need to fill it up to at least ${RED}five ticks${NC}."
  echo
elif [ $fillcount -lt 5 ]
then
  echo
  echo "Think I might need a bit more... I should fill it up to at least ${RED}five ticks${NC} or so."
  echo "That should be enough to keep the ship running until tomorrow."
  echo
elif [ $fillcount -ge 5 ]
then
  echo
  echo "A nice splash is heard as the gasoline empties into the engine."
  echo "There we go. I knew it wouldn't take that long to do."
  cat ../../clues/engineClue
  cp ../../clues/engineClue ../../pockets/foundClues/engineClue
  ../../dirs/handbook.sh engine >> pockets/handbook 
  echo "[${RED}touch ${NC}has been added to your handbook! You can access it at any time via your pocket.]"
  echo "[${RED}Engine Clue ${NC}has been found! You can access it at any time via the ${BLU}foundClues ${NC}directory in your pocket.]"
fi
