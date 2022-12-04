#!/bin/bash

RED=$(tput setaf 1)
BLU=$(tput setaf 4)
NC=$(tput sgr0)

clear
if cmp -s input1 ../input1 && cmp -s input2 ../input2 && cmp -s input3 ../input3 && cmp -s input4 ../input4 && cmp -s input5 ../input5
then
	echo
	echo "[CHECKING INPUTS...]"; sleep 1
	echo "[ALL INPUTS SUCCESSFULLY COPIED OVER.]"
	echo "[PLEASE STAND BACK. UNLOCKING MANIFOLDS...]"
	echo
	echo "A loud thunk is heard as the manifolds unlock."
	
	cat ../../../clues/reactorClue
	cp ../../../clues/reactorClue pockets/foundClues/reactorClue

	echo "[${RED}Reactor Clue ${NC}has been found! You can access it at any time via the ${BLU}foundClues ${NC}directory in your pocket.]"
	echo
else
	echo
	echo "[CHECKING INPUTS...]"; sleep 1
	echo "[INPUTS NOT COPIED OVER.]"
	echo "[MANIFOLDS REMAINING LOCKED...]"
	echo
fi	
