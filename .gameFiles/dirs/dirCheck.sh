#!/bin/bash
# uh basically checks which directory the player is in to help run scripts at the right time
# the alternative was making a pseudo command line. aka you could also just tell me to commit suicide

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
}



visitCheck() { #checks if there's a visit flag in current directory 
if [ "$currentDir" = ~/LarkProject/.gameFiles ]
then
  ./oobCheck.sh
  cdCheck
elif [ "$currentDir" = "$shipHub" ]
then
  ./dirMovement.sh
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
# cafeteria


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
