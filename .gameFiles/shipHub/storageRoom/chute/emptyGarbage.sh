#!/bin/bash

RED=$(tput setaf 1)
BLU=$(tput setaf 4)
NC=$(tput sgr0)

clear
if [ -f garbage1 ] && [ -f garbage2 ] && [ -f garbage3 ]  && [ -f garbage4 ];
then
<<<<<<< HEAD
	cat ../../../clues/storageClue
	cp ../../../clues/storageClue pockets/storageClue

	echo "[${RED}Security Clue${NC}has been found! You can access it at any time via the ${BLU}foundClues ${NC}directory in your pocket.]"
=======
	cat ../../../clues/storageClue;
	cp ../../../clues/storageClue pockets/storageClue;
	echo "[${RED}Security Clue ${NC}has been found! You can access it at any time via the ${BLU}foundClues ${NC}directory in your pocket.]"
>>>>>>> b357a613a2353b016f75d0ebce4b592a76445475
else
	echo "Doesn't seem like I've cleared all the trash. Let me get back to it.";
fi
		
