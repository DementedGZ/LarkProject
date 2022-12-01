#!/bin/bash

RED=$(tput setaf 1)
NC=$(tput sgr0)

if [ -f "../shipHub/securityRoom/.visitedFlag" ]
then
  clear
  echo
  echo "You walk back into the security room. The light of the CCTV cameras is beaming back towards you."
  if [ ! -f pockets/foundClues/securityClue ]
  then
    echo "It could be good to take another ${RED}look at the server logs.${NC} It's possible there was a trick the imposter used to cover their ${RED}tails${NC}..."
  fi
  echo "Perhaps you can use this quiet time to grab ahold your bearings and review information."
  echo
  exit
fi

clear
echo
echo "The security room... From here, the entire ship can be monitored... which means it can also be the perfect spot to ensure no one's got their eyes on you when seeking to destroy something."
echo "The security terminal's logs can't be removed as easily since all the data is stored in the main server."
echo "All I need to do is to ${RED}check the logs${NC}, and we can see who's logged in since the ship was being sabotaged, and perhaps we can step closer to finding out who our little imposter is..."
echo "Of course, they're sneaky. It's not like I'm gonna find 'em without any tricks... they had to have done SOMETHING to try and cover their ${RED}t${NC}r${RED}ail${NC}."
echo
