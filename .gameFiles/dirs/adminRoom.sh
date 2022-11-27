#!/bin/bash

clear

if [ -e visitedFlag ] 
  then
  echo
  echo "You walk back into the admin room. Nothing seems out of place."
  echo
fi
touch ~/LarkProject/.gameFiles/shipHub/adminRoom/visitedFlag
