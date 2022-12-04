#!/bin/bash

RED=$(tput setaf 1)
BLU=$(tput setaf 4)
NC=$(tput sgr0)

if [ -f vial1 ] && [ -f vial2 ] && [ -f vial3 ] && [ -f vial5 ]
then
  if [ -f vial4 ]
  then
    echo
    echo "[NO VIALS REMOVED.]"
    echo "[CONTAMINATED VIAL STILL DETECETED. PLEASE REMOVE CONTAIMANTED VIAL.]"
    echo
  elif [ ! -f vial4 ]
  then
    echo
    echo "[CONTAIMNATED VIAL REMOVED.]"
    echo "[NO CONTAMINATED VIALS DETECTED.]"
    cat ../../../clues/medbayClue
    cp ../../../clues/medbayClue ../../pockets
    echo "[${RED}Medbay Clue ${NC}has been found! You can access it at any time via the ${BLU}foundClues ${NC}directory in your pocket.]"
  fi
else
  echo
  echo "[NON-CONTAMINATED VIAL REMOVED.]"
  echo "[PLEASE PLACE VIAL(S) BACK AND REMOVE CONTAMINATED VIAL.]"
  echo 
  echo "You place the non-contaminated vials back into their place."
  echo
  touch vial1 vial2 vial3 vial5
fi
