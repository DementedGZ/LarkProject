#!/bin/bash
# uh basically checks which directory the player is in to help run scripts at the right time

count=0
shipHub=../shipHub
prevDir=f

dirTest() {
if [ "$currentDir" = ".gameFiles" ] && [ "$count" = 0 ]
then
  count=1
  prevDir="$currentDir"
  visitCheck
fi

if [ "$currentDir" = "shipHub" ] && [ "$count" = 0 ]
then
  count=1
  prevDir="$currentDir"
  visitCheck
fi

if [ "$currentDir" = "adminRoom" ] && [ "$count" = 0 ]
then
  count=1
  prevDir="adminRoom"
  visitCheck
fi

if [ "$currentDir" = "securityRoom" ] && [ "$count" = 0 ]
then
  count=1
  prevDir="securityRoom"
  visitCheck
fi

if [ "$currentDir" = "navigationRoom" ] && [ "$count" = 0 ]
then
  count=1
  prevDir="navigationRoom"
  visitCheck
fi

if [ "$currentDir" = "medbay" ] && [ "$count" = 0 ]
then 
  count=1
  prevDir="medbay"
  visitCheck
fi

if [ "$currentDir" = "weaponsRoom" ] && [ "$count" = 0 ]
then
  count=1
  prevDir="weaponsRoom"
  visitCheck
fi

if [ "$currentDir" = "cafeteria" ] && [ "$count" = 0 ]
then
  count=1
  prevDir="cafeteria"
  visitCheck
fi

if [ "$currentDir" = "storageRoom" ] && [ "$count" = 0 ]
then
  count=1
  prevDir="storageRoom"
  visitCheck
fi

if [ "$currentDir" = "reactor" ] && [ "$count" = 0 ]
then
  count=1
  prevDir="reactor"
  visitCheck
fi

if [ "$currentDir" = "engineRoom" ] && [ "$count" = 0 ]
then
  count=1
  prevDir="engineRoom"
  visitCheck
fi

if [ "$currentDir" = "electrical" ] && [ "$count" = 0 ]
then
  count=1
  prevDir="electrical"
  visitCheck
fi
}



visitCheck() { #checks if there's a visit flag in current directory 
if [ "$currentDir" = ".gameFiles" ]
then
  ./oobCheck.sh
  cdCheck
elif [ "$currentDir" = "shipHub" ]
then
  clear
  cat ../dirs.txt
  cdCheck
# admin room
elif [ "$currentDir" = "adminRoom" ] && [ -f .visitedFlag ]
then
  ./adminRoom.sh
  cdCheck
elif [ "$currentDir" = "adminRoom" ] && [ ! -f .visitedFlag ]
then
  ./adminRoom.sh
  touch "$shipHub"/adminRoom/.visitedFlag
  cdCheck
# security room
elif [ "$currentDir" = "securityRoom" ] && [ -f .visitedFlag ]
then
  ./securityRoom.sh
  cdCheck
elif [ "$currentDir" = "securityRoom" ] && [ ! -f .visitedFlag ]
then
  ./securityRoom.sh
  touch "$shipHub"/securityRoom/.visitedFlag
  cdCheck
# navigation room
elif [ "$currentDir" = "navigationRoom" ] && [ -f .visitedFlag ]
then
  ./navigationRoom.sh
  cdCheck
elif [ "$currentDir" = "navigationRoom" ] && [ ! -f .visitedFlag ]
then
  ./navigationRoom.sh
  touch "$shipHub"/navigationRoom/.visitedFlag
  cdCheck
# medbay room
elif [ "$currentDir" = "medbay" ] && [ -f .visitedFlag ]
then
  ./medbayRoom.sh
  cdCheck
elif [ "$currentDir" = "medbay" ] && [ ! -f .visitedFlag ]
then
  ./medbayRoom.sh
  touch "$shipHub"/medbay/.visitedFlag
  cdCheck
# weapons room
elif [ "$currentDir" = "weaponsRoom" ] && [ -f .visitedFlag ]
then
  ./weaponsRoom.sh
  cdCheck
elif [ "$currentDir" = "weaponsRoom" ] && [ ! -f .visitedFlag ]
then
  ./weaponsRoom.sh
  touch "$shipHub"/weaponsRoom/.visitedFlag
  cdCheck
# cafeteria
elif [ "$currentDir" = "cafeteria" ] && [ -f .visitedFlag ]
then
  ./cafeteria.sh
  cdCheck
elif [ "$currentDir" = "cafeteria" ] && [ ! -f .visitedFlag ]
then
  ./cafeteria.sh
  touch "$shipHub"/cafeteria/.visitedFlag
  cdCheck
# storage room
elif [ "$currentDir" = "storageRoom" ] && [ -f .visitedFlag ]
then
  ./storageRoom.sh
  cdCheck
elif [ "$currentDir" = "storageRoom" ] && [ ! -f .visitedFlag ]
then
  ./storageRoom.sh
  touch "$shipHub"/storageRoom/.visitedFlag
  cdCheck
# reactor
elif [ "$currentDir" = "reactor" ] && [ -f .visitedFlag ]
then
  cp ../copy/input* $shipHub/reactor
  ./reactor.sh
  cdCheck
elif [ "$currentDir" = "reactor" ] && [ ! -f .visitedFlag ]
then
  cp ../copy/input* $shipHub/reactor
  ./reactor.sh
  touch "$shipHub"/reactor/.visitedFlag
  cdCheck
# engine room
elif [ "$currentDir" = "engineRoom" ] && [ -f .visitedFlag ]
then
  ./engineRoom.sh
  cdCheck
elif [ "$currentDir" = "engineRoom" ] && [ ! -f .visitedFlag ]
then
  ./engineRoom.sh
  touch "$shipHub"/engineRoom/.visitedFlag
  cdCheck
# electrical
elif [ "$currentDir" = "electrical" ] && [ -f .visitedFlag ]
then
  cp ../copy/cut* $shipHub/wireEnd
  ./electrical.sh
  cdCheck
elif [ "$currentDir" = "electrical" ] && [ ! -f .visitedFlag ]
then
  cp ../copy/cut* $shipHub/wireEnd
  ./electrical.sh
  touch "$shipHub"/electrical/.visitedFlag
  cdCheck
fi
}



cdCheck() { #checks if player is still in current directory
while [ "$prevDir" = "$currentDir" ]
do
  currentDir=$(readlink /proc/$PPID/cwd | awk -F '/' '{print $NF}')
  count=0
done
}



while true
do
  currentDir=$(readlink /proc/$PPID/cwd | awk -F '/' '{print $NF}')
  dirTest
done
