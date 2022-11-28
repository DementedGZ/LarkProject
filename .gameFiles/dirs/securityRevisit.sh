#!/bin/bash

RED=$(tput setaf 1)
NC=$(tput sgr0)

clear
echo
echo "You walk back into the security room. The light of the CCTV cameras is beaming back towards you."
if [ ! -f pockets/foundClues/securityClue ]
then
  echo "It could be good to take another ${RED}look at the server logs.${NC} It's possible there was a trick the imposter used to cover their ${RED}tails${NC}..."
fi
echo "Perhaps you can use this quiet time to grab ahold your bearings and review information."
echo
