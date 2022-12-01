#!/bin/bash
hostname="cptred@susnix.proj"
transfer="currentStatus.txt"
target="skaldhq@susnix.proj"
pw1="Stw3rkUS"
pw2="M0NcoS73Rck"

RED=$(tput setaf 1)
BLU=$(tput setaf 4)
NC=$(tput sgr0)

clear
echo

until [ "$userInput" = "$hostname" ]
do
  read -p "[TO BEGIN TRANSFERRING DATA, INPUT HOST TO TRANSFER FROM:] " userInput
  if [ "$userInput" = "$hostname" ]
  then
    echo
    echo "[HOSTNAME: $userInput]"
    echo "[HOSTNAME ACCEPTED]"
    echo
  else
    echo
    echo "[HOSTNAME: $userInput]"
    echo "[HOSTNAME DOES NOT EXIST]"
    echo
  fi
done

until [ "$userInput2" = "$transfer" ]
do
  read -p "[INPUT DATA TO BE TRANSFERED:] " userInput2
  if [ "$userInput2" = "$transfer" ]
  then
    echo
    echo "[FILE: $userInput2]"
    echo "[FILE ACCEPTED]"
    echo
  else
    echo
    echo "[FILE: $userInput2]"
    echo "[FILE DOES NOT EXIST]"
    echo
  fi
done

until [ "$userInput3" = "$target" ]
do
  read -p "[INPUT TARGET FOR TRANSFER:] " userInput3
    if [ "$userInput3" = "$target" ]
  then
    echo
    echo "[TARGET: $userInput3]"
    echo "[TARGET ACCEPTED]"
    echo
  else
    echo
    echo "[TARGET: $userInput3]"
    echo "[TARGET DOES NOT EXIST]"
    echo
  fi
done

echo "[FULL INPUT FOR FILE TRANSFER: ${RED}scp $hostname:/home/cptred/$transfer $target:/home/susnixhq/statusReport/$transfer${NC}]"
echo "[TO COMPLETE TRANSFER, YOU WILL NEED PASSWORDS FROM BOTH REMOTE SERVERS]"
echo

until [ "$userInput" = "$pw1" ]
do
  read -p "[INPUT PASSWORD FOR $hostname:] " userInput
  if [ "$userInput" = "$pw1" ]
  then
    echo
    echo "[INPUT: ***********]"
    echo "[PASSWORD ACCEPTED]"
    echo
  else
    echo
    echo "[INPUT: ***********]"
    echo "[PASSWORD INCORRECT. PLEASE TRY AGAIN]"
    echo
  fi
done

until [ "$userInput" = "$pw2" ]
do
  read -p "[INPUT PASSWORD FOR $target:] " userInput
  if [ "$userInput" = "$pw2" ]
  then
    echo
    echo "[INPUT: ***********]"
    echo "[PASSWORD ACCEPTED]"
    echo
  else
    echo
    echo "[INPUT: ***********]"
    echo "[PASSWORD INCORRECT. PLEASE TRY AGAIN]"
    echo
  fi
done

echo "[TRANSFERRING DATA...] {${RED}:::::::::::::::${NC}}"; sleep 1
echo "[TRANSFERRING DATA...] {||${RED}:::::::::::::${NC}}"; sleep 1
echo "[TRANSFERRING DATA...] {||||||${RED}:::::::::${NC}}"; sleep 1
echo "[TRANSFERRING DATA...] {|||||||||${RED}::::::${NC}}"; sleep 1
echo "[TRANSFERRING DATA...] {|||||||||||||${RED}::${NC}}"; sleep 1
echo
echo "[TRANSFER COMPLETE. EXITING PROGRAM...]"

cat ../../clues/navigationClue
cp ../../clues/navigationClue pockets/foundClues/navigationClue

echo "[${RED}navigationClue${NC}has been found! You can access it at any time via the ${BLU}foundClues ${NC}directory in your pocket.]"
echo
