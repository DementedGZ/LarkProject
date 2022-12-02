#!/bin/bash

if [ -f ../../medbayRoom/vials/vial1 ] && [ -f ../../medbayRoom/vials/vial2 ] && [ -f ../../medbayRoom/vials/vial3 ] && [ -f ../../medbayRoom/vials/vial5 ]
then
  if [ -f ../../medbayRoom/vials/vial4 ]
  then
    echo "No vial has been removed."
    echo "Please remove the altered vial."
  else
    if [ -f ../../../clues/medbaycheck.txt ]
    then
      echo "Good Job here is a clue."
      echo "The clus is in your pocket."
      cp ../../../clues/medbayClue ../../pockets
    else
      echo "Good Job" 
      echo "Please go do your medical scan to get a clue."
    fi
  fi
else
  echo "Sometheing went wrong."
  echo "Please remove only the altered vial."
fi
