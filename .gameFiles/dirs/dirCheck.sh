#!/bin/bash
# uh basically checks which directory the player is in to help run scripts at the right time

count=0
shipHub=~/LarkProject/.gameFiles/shipHub
prevDir=f

dirTest() {
if [ "$currentDir" = ~/LarkProject/.gameFiles ] && [ "$count" = 0 ]
then
  count=1
  prevDir="$currentDir"
  visitCheck
fi

if [ "$currentDir" = "$shipHub" ] && [ "$count" = 0 ]
then
  count=1
  prevDir="$currentDir"
  visitCheck
fi

if [ "$currentDir" = "$shipHub"/adminRoom ] && [ "$count" = 0 ]
then
  count=1
  prevDir="$shipHub"/adminRoom
  visitCheck
fi

if [ "$currentDir" = "$shipHub"/securityRoom ] && [ "$count" = 0 ]
then
  count=1
  prevDir="$shipHub"/securityRoom
  visitCheck
fi

if [ "$currentDir" = "$shipHub"/electrical ] && [ "$count" = 0 ]
then
  count=1
  prevDir="$shipHub"/electrical
  visitCheck
fi

if [ "$currentDir" = "$shipHub"/navigationRoom ] && [ "$count" = 0 ]
then
  count=1
  prevDir="$shipHub"/navigationRoom
  visitCheck
fi

if [ "$currentDir" = "$shipHub"/medbay ] && [ "$count" = 0 ]
then 
  count=1
  prevDir="$shipHub"/medbay
  visitCheck
fi

if [ "$currentDir" = "$shipHub"/weaponsRoom ] && [ "$count" = 0 ]
then
  count=1
  prevDir="$shipHub"/weaponsRoom
  visitCheck
fi

if [ "$currentDir" = "$shipHub"/cafeteria ] && [ "$count" = 0 ]
then
  count=1
  prevDir="$shipHub"/cafeteria
  visitCheck
fi
}



visitCheck() { #checks if there's a visit flag in current directory 
if [ "$currentDir" = ~/LarkProject/.gameFiles ]
then
  ./oobCheck.sh
  cdCheck
elif [ "$currentDir" = "$shipHub" ]
then
  clear
  cat ../dirs.txt
  cdCheck
# admin room
elif [ "$currentDir" = "$shipHub"/adminRoom ] && [ -f "$currentDir"/.visitedFlag ]
then
  ./adminRoom.sh
  cdCheck
elif [ "$currentDir" = "$shipHub"/adminRoom ] && [ ! -f "$currentDir"/.visitedFlag ]
then
  touch "$currentDir"/.visitedFlag
  cdCheck
# security room
elif [ "$currentDir" = "$shipHub"/securityRoom ] && [ -f "$currentDir"/.visitedFlag ]
then
  ./securityRoom.sh
  cdCheck
elif [ "$currentDir" = "$shipHub"/securityRoom ] && [ ! -f "$currentDir"/.visitedFlag ]
then
  ./securityRoom.sh
  touch "$currentDir"/.visitedFlag
  cdCheck
# electrical
elif [ "$currentDir" = "$shipHub"/electrical ] && [ -f "$currentDir"/.visitedFlag ]
then
  ./electrical.sh
  cdCheck
elif [ "$currentDir" = "$shipHub"/electrical ] && [ ! -f "$currentDir"/.visitedFlag ]
then
  ./electrical.sh
  touch "$currentDir"/.visitedFlag
  cdCheck
# navigation room
elif [ "$currentDir" = "$shipHub"/navigationRoom ] && [ -f "$currentDir"/.visitedFlag ]
then
  ./navigationRoom.sh
  cdCheck
elif [ "$currentDir" = "$shipHub"/navigationRoom ] && [ ! -f "$currentDir"/.visitedFlag ]
then
  ./navigationRoom.sh
  touch "$currentDir"/.visitedFlag
  cdCheck
# medbay room
elif [ "$currentDir" = "$shipHub"/medbay ] && [ -f "$currentDir"/.visitedFlag ]
then
  ./medbayRoom.sh
  cdCheck
elif [ "$currentDir" = "$shipHub"/medbay ] && [ ! -f "$currentDir"/.visitedFlag ]
then
  ./medbayRoom.sh
  touch "$currentDir"/.visitedFlag
  cdCheck
# weapons room
elif [ "$currentDir" = "$shipHub"/weaponsRoom ] && [ -f "$currentDir"/.visitedFlag ]
then
  ./weaponsRoom.sh
  cdCheck
elif [ "$currentDir" = "$shipHub"/weaponsRoom ] && [ ! -f "$currentDir"/.visitedFlag ]
then
  ./weaponsRoom.sh
  touch "$currentDir"/.visitedFlag
  cdCheck
# cafeteria
elif [ "$currentDir" = "$shipHub"/cafeteria ] && [ -f "$currentDir"/.visitedFlag ]
then
  ./cafeteria.sh
  cdCheck
elif [ "$currentDir" = "$shipHub"/cafeteria ] && [ ! -f "$currentDir"/.visitedFlag ]
then
  ./cafeteria.sh
  touch "$currentDir"/.visitedFlag
  cdCheck

fi
}



cdCheck() { #checks if player is still in current directory
while [ "$prevDir" = "$currentDir" ]
do
  currentDir=$(readlink -e /proc/$PPID/cwd)
  count=0
done
}



while true
do
  currentDir=$(readlink -e /proc/$PPID/cwd)
  dirTest
done
