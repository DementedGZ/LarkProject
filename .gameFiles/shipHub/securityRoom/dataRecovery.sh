#!/bin/bash
answer="PINK"
answer2="BLUE"
userInput=" "
userInput2=" "

RED=$(tput setaf 1)
BLU=$(tput setaf 4)
NC=$(tput sgr0)

clear
echo
until [ "$userInput" = "$answer" ] || [ "$userInput" =  "$answer2" ]
do
  echo "[TO FIX CORRUPTED DATA, INPUT RECORD NAME OF THOSE CORRUPTED:] "
  read -p "[RECORDS ARE CASE SENSITIVE, PLEASE PUT NAMES IN ALL CAPS:] " userInput
  if [ "$userInput" != "$answer" ] && [ "$userInput" != "$answer2" ] 
  then
    echo 
    echo "[RECORD: $userInput]"
    echo "[NO DETECTED RECORDS UNDER $userInput. PLEASE TRY AGAIN.]"
    echo
  else
    echo 
    echo "[RECORD: $userInput]"
    echo "[CORRUPTED RECORD DETECTED UNDER $userInput.]"
    echo
  fi
done

if [ "$userInput" = "$answer" ]
then answer2="BLUE"
elif [ "$userInput" = "$answer2" ]
then answer2="PINK"
fi

until [ "$userInput2" = "$answer2" ]
do
  read -p "[TO FIX CORRUPTED DATA, INPUT RECORD NAME OF THOSE CORRUPTED:] " userInput2
  if [ "$userInput2" != "$answer2" ]
  then
    echo
    echo "[RECORD: $userInput]"
    echo "[NO DETECTED RECORDS UNDER $userInput. PLEASE TRY AGAIN.]"
    echo
  else
    echo "[RECORD: $userInput2]"
    echo "[CORRUPTED RECORD DETECTED UNDER $userInput2.]"
    echo
  fi
done

echo "[RECORDS: $userInput, $userInput2]"
echo "[RECORDS ACCEPTED. FIXING CORRUPTED DATA...]"
echo "[FIXING DATA...] {${RED}:::::::::::::::${NC}}"; sleep 1
echo "[FIXING DATA...] {||${RED}:::::::::::::${NC}}"; sleep 1
echo "[FIXING DATA...] {||||||${RED}:::::::::${NC}}"; sleep 1
echo "[FIXING DATA...] {|||||||||${RED}::::::${NC}}"; sleep 1
echo "[FIXING DATA...] {|||||||||||||${RED}::${NC}}"; sleep 1
echo "[CORRUPTED DATA FIXED.]"

cat ../../clues/securityClue
cp ../../clues/securityClue pockets/foundClues/securityClue
../../dirs/handbook.sh security >> pockets/handbook
echo "[${RED}tail ${NC}has been added to your handbook! You can access it at any time via your pocket.]"
echo "[${RED}Security Clue${NC}has been found! You can access it at any time via the ${BLU}foundClues ${NC}directory in your pocket.]"
echo
