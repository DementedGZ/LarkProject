#!/bin/bash
# uh basically checks which directory the player is in to help run scripts at the right time
# the alternative was making a pseudo command line. aka you could also just tell me to commit suicide

count=0
shipHub=~/LarkProject/.gameFiles/shipHub
prevDir=f

dirTest() {
if [ "$currentDir" = "$shipHub" ] && [ "$count" = 0 ]
then
  count=1
  prevDir=$currentDir
  visitCheck
fi

if [ "$currentDir" = "$shipHub"/adminRoom ] && [ "$count" = 0 ]
then
  count=1
  prevDir=$currentDir
  visitCheck
fi
}

visitCheck() { #checks if there's a visit flag in current directory 
if [ "$currentDir" = "$shipHub" ]
then
  ./dirMovement.sh
  cdCheck
fi

if [ "$currentDir" = "$shipHub"/adminRoom ] && [ -f "$currentDir"/.visitedFlag ]
then
  ./adminRoom.sh
  cdCheck
else
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
