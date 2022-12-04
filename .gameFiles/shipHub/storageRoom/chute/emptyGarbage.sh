#!/bin/bash

RED=$(tput setaf 1)
BLU=$(tput setaf 4)
NC=$(tput sgr0)

clear
if [ -f garbage1 ] && [ -f garbage2 ] && [ -f garbage3 ]  && [ -f garbage4 ];
then
	cat ../../../clues/storageClue;
	cp ../../../clues/storageClue pockets/storageClue;
	echo "[${RED}Security Clue ${NC}has been found! You can access it at any time via the ${BLU}foundClues ${NC}directory in your pocket.]"
else
	echo "Doesn't seem like I've cleared all the trash. Let me get back to it.";
fi
		
