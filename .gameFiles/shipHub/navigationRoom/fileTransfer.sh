#!/bin/bash

echo "you need to download the files missing stolen from the ship"
echo "Pscp is a tool you can use to download files to the ship."

read -p "Do pscp -P 22 red@ember.hpc.lab:/home/+color/files c:\Users\cn\Destop\files" userInput

# Check if string is empty using -z. For more 'help test'    
if [[ -z "$userInput" ]]; then
   printf '%s\n' "No input entered"
   exit 1
else
   echo "Downloading 10% complete"
    sleep 1
    echo "Downloading 40% complete"
    sleep 1
    echo "Downloading 70% complete"
    sleep 1
    echo "Downloading 100% complete"

    #Dev clues and such here
fi
