#!/bin/bash

RED=$(tput setaf 1)
NC=$(tput sgr0)

clear
echo

if [ -f "../shipHub/navigationRoom/.visitedFlag" ]
then
  clear
  echo
  echo "You walk back into the navigation room."
  if [ ! -f pockets/foundClues/navigationClue ]
  then
    echo "I still need to ${RED}transfer ${NC}that status report back to HQ."
    echo "I'll need to find the password for the HQ's remote server to make any progress though."
  fi
  echo "Perhaps you can use this quiet time to grab ahold your bearings and review information."
  echo
  exit
fi

echo "The navigation room. Here we can chart all of our courses and send whatever data we need back to HQ."
echo "On that note, I'll need to ${RED}transfer ${NC}that status report back. They've gotta know the situation here, and as soon as possible."
echo "I've just gotta run the ${RED}data transfer program ${NC}and--"
echo "Ah. Right. I need the password for the HQ's remote server to send it back. It should be here somewhere..."
echo
