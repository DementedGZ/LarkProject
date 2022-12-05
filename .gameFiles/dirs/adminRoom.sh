#!/bin/bash

RED=$(tput setaf 1)
NC=$(tput sgr0)

if [ -f "../shipHub/adminRoom/.visitedFlag" ]
then
  clear
  echo
  echo "You walk back into the admin room. Nothing seems out of place."
  if [ ! -f ../pockets/foundClues/adminClue ]
  then
    echo "Man, where could I have put my ID? It's gotta be in my ${RED}pockets${NC}, right? And I still can't get that ${RED}cat ${NC}obsession out of my head..."
    echo
  fi
  echo "Perhaps you can use this quiet time to grab ahold your bearings and review information."
  echo
  exit
fi

clear
echo
echo "As you walk into the admin room, a bright light greets you on the console."
echo "Welcome [UNKNOWN PASSENGER]. Make your identity known by entering your access code: "
echo
echo "You should have your ID stashed away in your pockets. See if you can ${RED}l${NC}i${RED}s${NC}t what's in them."
echo "Of course, once you've found it, you'll need to actually look at it. The old Captain was always interested in ${RED}cat${NC}s. I wonder why that is..."
echo "After that, you should be good to enter in the code. Just walk towards the console and type \"./access.sh\" to run the access script."
echo
