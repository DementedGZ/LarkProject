#!/bin/bash

# Preload 5 meteor files (meteor1-5)

meteorcount=0

RED=$(tput setaf 1)
BLU=$(tput setaf 4)
NC=$(tput sgr0)

clear

for i in turretScope/meteor[1-5]
do
  if [ -f "$i" ]
  then
    (( meteorcount++ ))
  fi
done

echo
echo "[SCANNING SPACE 50M FROM SHIP...]"; sleep 1
echo "[SCANNING SPACE 75M FROM SHIP...]"; sleep 1
echo "[SCANNING SPACE 100M FROM SHIP...]"; sleep 1

if [ -f turretScope/meteor1 ] || [ -f turretScope/meteor2 ] || [ -f turretScope/meteor3 ] || [ -f turretScope/meteor4 ] || [ -f turretScope/meteor5 ]
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
  cp ../../clues/weaponsClue pockets/foundClues/weaponsClue
  echo "[${RED}Weapons Clue ${NC}has been found! You can access it at any time via the ${BLU}foundClues ${NC}directory in your pocket.]"
fi
