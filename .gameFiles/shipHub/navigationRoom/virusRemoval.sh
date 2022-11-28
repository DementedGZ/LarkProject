#!/bin/bash

echo "There is a virus in the ships logs that needs to be removed"
echo "rm is a command that will help remove the virus."

read -p "Use rm virus.sh" userInput

if [[ -z "$userInput" ]]; then
   printf '%s\n' "No input entered"
   exit 1
else
   echo "Virus removed!"

    #Dev clues and such here
fi

