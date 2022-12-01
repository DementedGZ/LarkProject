#!/bin/bash

RED=$(tput setaf 1)
NC=$(tput sgr0)

linkcount=0
hardtestR=$(stat --printf '%h\n' "wireEnd/cutRed")
hardtestP=$(stat --printf '%h\n' "wireEnd/cutPink")
filecount=$(ls | wc -l)

for i in *
do
  linktest=$(readlink $i)
  if [ "$linktest" = "wireEnd/cutYellow" ] || [ "$linktest" = "wireEnd/cutBlue" ]
  then
    (( linkcount++ ))
  fi
done

if [ "$hardtestR" = 2 ]
then
  (( linkcount++ ))
fi

if [ "$hardtestP" = 2 ]
then
  (( linkcount++ ))
fi

if [ "$filecount" == 7 ] && [ "$linkcount" != 4 ]
then
  echo
  echo "The wires all seem to be linked, but they're not ${RED}linked correctly${NC}... I did say some need a ${RED}soft or hard${NC} touch."
  echo
  exit
fi

if [ "$linkcount" != 4 ]
then
  echo 
  echo "I've connected $linkcount of them. I'll need them all connected if I want to fix this sabotage."
  echo
  exit
elif [ "$linkcount" == 4 ] 
then
  echo
  echo "Good. It looks like all of the wires have been linked correctly now."
  echo
  cat ../../clues/electricalClue
  cp ../../clues/electricalClue pockets/foundClues/electricalClue
  exit
fi
