#!/bin/bash

accesscode=Stw3rkUS
name=f

clear
echo
until [ "$name" = $accesscode ]
do
  read -p "ACCESS CODE: " name
  if [ "$name" != $accesscode ]
  then
    echo 
    echo "[ACCESS CODE: $name]"
    echo "[CODE INVALID]"
    echo
  fi
done

cat ../../accessaccepted.txt
cat ../../clues/adminClue
cp ../../clues/adminClue pockets/foundClues/adminClue
../../dirs/handbook.sh admin >> pockets/handbook

RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m'

echo "You stash this thought away into the back of your mind. This may be a vital clue..."
echo
echo -e "[${RED}ls, cat, cd, and pwd ${NC}have been added to your handbook! You can access it at any time via your pocket.]"
echo -e "[${RED}Admin Clue ${NC}has been found! You can access it at any time via the ${BLUE}foundClues ${NC}directory in your pocket.]"
echo
echo -e "[You can go back to the ship's main hub by typing ${RED}cd ..${NC}.]"
echo -e "[Similarly, typing ${RED}cd "directoryName" ${NC}can be used to change your working directory to any room you see in the hub.]"
echo -e "[If you ever get lost, you can always use the ${RED}pwd ${NC}command to remind yourself where you are.]"
echo
