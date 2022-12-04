#!/bin/bash

RED=$(tput setaf 1)
BLU=$(tput setaf 4)
NC=$(tput sgr0)

clear
if [ -f garbage1 ] && [ -f garbage2 ] && [ -f garbage3 ]  && [ -f garbage4 ];
then
	echo
	echo "[EJECTING EVERYTHING FROM CHUTE. PLEASE STAND BACK...]"; sleep 1
	echo "[EJECTING...]"; sleep 1
	echo "[EJECTING...]"; sleep 1
	echo "[EJECTING...]"; sleep 1
	echo "[EJECTION COMPLETE. RETURNING TO STANDBY MODE...]"
	rm garbage1 garbage2 garbage3 garbage4
	cat ../../../clues/storageClue
	cp ../../../clues/storageClue ../../../pockets/foundClues/storageClue
	
	echo "[${RED}Security Clue${NC} has been found! You can access it at any time via the ${BLU}foundClues ${NC}directory in your pocket.]"
else
	echo
	echo "Wish I could stop here, but there are clearly still a few pieces of trash scattered around."
	echo "It's just over there. Imposter to stop. Potential evidence. Just gotta... move it on over here. Yeah."
	echo
fi
