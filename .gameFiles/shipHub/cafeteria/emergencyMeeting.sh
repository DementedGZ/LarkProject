#!/bin/bash
finalImpostor=blue
userInput=f

clear
read -p "Based on all of the clues you have gathered thus far, who is the impostor?" userInput
if [ "$userInput" != $finalImpostor ]
	then
		echo "If you've guessed wrong, there should be really cool dialog here but unfortunately i'm severely mentally challenged and can't write at all"
	else
		echo "If you've guessed right, there should be really cool dialog here but unfortunately i'm severely mentally challenged and can't write at all"
fi


