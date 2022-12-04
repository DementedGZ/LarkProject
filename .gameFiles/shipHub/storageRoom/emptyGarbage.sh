#!/bin/bash

RED=$(tput setaf 1)
BLU=$(tput setaf 4)
NC=$(tput sgr0)

clear
if [ -f garbage1 ] && [ -f garbage2 ] && [ -f garbage3 ]  && [ -f garbage4 ];
then
	cat ../../../clues/storageClue
	cp ../../../clues/storageClue pockets/storageClue

<<<<<<< HEAD
	echo "[${RED}Security Clue${NC} has been found! You can access it at any time via the ${BLU}foundClues ${NC}directory in your pocket.]"
=======
	echo "[${RED}Security Clue${NC}has been found! You can access it at any time via the ${BLU}foundClues ${NC}directory in your pocket.]"
>>>>>>> 56d51dc0e5e36fc6b13dbfd547128a4443f6df4f
else
	echo
	echo "Wish I could stop here, but there are clearly still a few pieces of trash scattered around."
	echo "It's just over there. Imposter to stop. Potential evidence. Just gotta... move it on over here. Yeah."
	echo
fi
