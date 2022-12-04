#!/bin/bash

RED=$(tput setaf 1)
BLU=$(tput setaf 4)
NC=$(tput sgr0)

clear
if cmp file1 ../file1 && cmp file2 ../file2 && cmp file3 ../file3 && cmp file4 ../file4
then
	cat ../../../clues/reactorClue
	cp ../../../clues/reactorClue pockets/reactorClue

	echo "[${RED}Reactor Clue ${NC}has been found! You can access it at any time via the ${BLU}foundClues ${NC}directory in your pocket.]"
else
	echo "DIRECTORY NOT FULLY UPDATED. PLEASE TRY AGAIN."
fi	
