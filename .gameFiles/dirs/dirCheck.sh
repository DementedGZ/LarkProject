#!/bin/bash
# uh basically checks which directory the player is in to help run scripts at the right time
# the alternative was making a pseudo command line. aka you could also just tell me to commit suicide

count=0
shipHub=~/LarkProject/.gameFiles/shipHub

dirTest() {
if [ "$currentDir" = "$shipHub" -a "$count" = 0 ]
then
  count=1
  source dirMovement.sh
fi

if [ "$currentDir" = "$shipHub"/adminRoom -a "$count" = 0 ]
then
  count=1
  source adminRoom.sh
fi
}

while true
do
  currentDir=$(readlink -e /proc/$PPID/cwd)
  dirTest
done
