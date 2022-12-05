#!/bin/bash

RED=$(tput setaf 1)
NC=$(tput sgr0)

if [ -f .inspectionCheck ]
then
  clear
  echo
  echo "[VIAL INSPECTION BEGINNING. PLEASE WAIT 30 SECONDS FOR INSPECTION TO COMPLETE...]"
  echo "[IF NOT BEING RAN IN BACKGROUND, USER CAN PRESS ${RED}CTRL-C ${NC}TO ABORT PROCESS.]"
  echo
  sleep 1
  sleep 1
  sleep 1
  sleep 1
  sleep 1
  sleep 1
  sleep 1
  sleep 1
  sleep 1
  sleep 1
  sleep 1
  sleep 1
  sleep 1
  sleep 1
  sleep 1
  sleep 1
  sleep 1
  sleep 1
  sleep 1
  sleep 1
  sleep 1
  sleep 1
  sleep 1
  sleep 1
  sleep 1
  sleep 1
  sleep 1
  sleep 1
  sleep 1
  sleep 1
  sleep 1
  sleep 1
  cp ../../inspectionResults.txt inspectionResults.txt
  mv .vials vials
else
  touch .inspectionCheck
  clear
  echo
  echo "[INPUT ID TO BEGIN SCAN.]"
  echo "[ID: Stw3rkUS]"
  echo "[SCAN BEGINNING...]"
  echo; sleep 1
  echo "CN: [RED]"; sleep 1
  echo "HT: 5' 8"; sleep 1
  echo "WT: 160lb"; sleep 1
  echo "BT: AB+"; sleep 1
  echo 
  echo "[SCAN COMPLETE.]"
  echo "[NO CONTAMINANTS DETECTED.]"
  echo "[VIAL INSPECTION ACCESS: GRANTED.]"
  echo
  echo "[RUN PROGRAM AGAIN TO BEGIN VIAL INSPECTION. INSPECTION WILL TAKE 30 SECONDS.]"
  echo "[PROGRAM CAN ${RED}BE RAN AS BACKGROUND PROCESS${NC}.]"
  echo "[BACKGROUND PROCESS RECOMMENDED: ALLOWS USER TO PREFORM OTHER TASKS WHILE INSPECTION RUNS.]"
  echo "[TO RUN VIAL INSPECTION IN BACKGROUND, PLEASE PLACE ${RED}AMPERSAND${NC} AFTER PROGRAM NAME.]"
  echo
fi
