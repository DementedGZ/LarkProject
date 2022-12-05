#!/bin/bash

RED=$(tput setaf 1)
NC=$(tput sgr0)

if [ -f "../shipHub/cafeteria/.visitedFlag" ]
then
  clear
  echo
  echo "You walk back into the cafeteria."
  echo "Nothing out of place here. Before hitting that emergency meeting button, I can take some time to organize my information."
  echo
  exit
fi

clear
echo
echo "The cafeteria. Nothing really to do in here, but..."
echo "The emergency meeting button. Once I can pin our little imposter down, all I've gotta do is hit it."
echo "Then, we can eject them from the ship, saving us all."
echo "I need to take this time to think carefully and review all my information."
echo
