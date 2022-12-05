#!/bin/bash

RED=$(tput setaf 1)
CYN=$(tput setaf 6)
YLW=$(tput setaf 3)
BLU=$(tput setaf 4)
NC=$(tput sgr0)

clear
echo

if [ -f ../shipHub/medbay/.visitedFlag ]
then
  echo "You walk back into the medbay."
  if [ -f ../shipHub/medbay/inspectionResults.txt ]
  then
    echo "It looks like the vial inspection is done running. I should go ahead and check the results."
    echo "I should have access to the vial chamber as well."
    echo
    exit
  elif [ -f ../shipHub/medbay/.inspectionCheck ]
  then
    echo "I've gotten authorization to go ahead with the inspection check."
    echo "Like it said, I need to the program again ${RED}in the background${NC}. That'll save a bunch of time in my investigation."
    echo "Then, once I've done that, I can come back in... 30 seconds or so, and check out whether or not the samples are okay."
    echo
  fi 
  echo "I still need to get authorization to do the inspection check by going through the decontamination process."
  echo "Perhaps you can use this quiet time to grab ahold your bearings and review information."
  echo
  exit
else 
  echo "The medical bay is where we can inspect strains we find out here, as well as take time to rest our weary souls."
  echo "Techincally, only ${CYN}[CYAN]${NC}, ${YLW}[YELLOW]${NC}, and ${BLU}[BLUE]${NC} are licensed medical doctors, though."
  echo "Of course, as Captain, I naturally have authorization to do vial inspection as well."
  echo "I've still gotta go through the decontamination process though. Really that just means checking my vitals for any unknown contaminants."
  echo "All I've gotta do is run the ${RED}vial inspection${NC} program and it should be free sailing."
  echo
fi 
