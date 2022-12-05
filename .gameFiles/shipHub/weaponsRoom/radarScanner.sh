#!/bin/bash

# Preload 5 meteor files (meteor1-5)

meteorcount=$(ls turretScope | wc -l)

RED=$(tput setaf 1)
BLU=$(tput setaf 4)
NC=$(tput sgr0)

clear

echo
echo "[SCANNING SPACE 50M FROM SHIP...]"; sleep 1
echo "[SCANNING SPACE 75M FROM SHIP...]"; sleep 1
echo "[SCANNING SPACE 100M FROM SHIP...]"; sleep 1

if [ $meteorcount -gt 0 ]
then
  echo
  echo "[$meteorcount METEORS DETECTED.]"
  echo "[PLEASE DESTROY BEFORE SHIP CAN PROCEED ON CHARTED COURSE.]"
  echo
else
  echo
  echo "[0 METEORS DETECTED.]"
  echo "[SHIP CONTINUING TO PROCEED ON CHARTED COURSE.]"
  cat ../../clues/weaponsClue
  cp ../../clues/weaponsClue ../../pockets/foundClues/weaponsClue
  ../../dirs/handbook.sh weapons >> pockets/handbook
  echo "[${RED}rm ${NC}has been added to your handbook! You can access it at any time via your pocket.]"
  echo "[${RED}Weapons Clue ${NC}has been found! You can access it at any time via the ${BLU}foundClues ${NC}directory in your pocket.]"
fi
