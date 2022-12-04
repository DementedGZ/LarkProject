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
echo "Checking the logs, here's what I can find..."
echo
head -n 20 ../shipHub/securityRoom/loginCatalog
echo
echo "Hmm... a lot of the entries are missing. Nothing completely extraordinary in that case... but the document is so long it'll take me forever to scroll through to the bottom."
echo "Of course, they're sneaky. It's not like I'm gonna find 'em without any tricks... they had to have done SOMETHING to try and cover their ${RED}tails${NC}."
echo
