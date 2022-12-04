#!/bin/bash
finalImpostor=Blue
userInput=f

RED=$(tput setaf 1)
GRN=$(tput setaf 2)
YLW=$(tput setaf 3)
BLU=$(tput setaf 4)
PNK=$(tput setaf 5)
CYN=$(tput setaf 6)
WHT=$(tput setaf 7)
NC=$(tput sgr0)
BOLD=$(tput bold)

cont(){
read -n 1 -s -r input
case "$input" in
  *)
    ;;
esac
}

clear
echo
echo "[Are you sure you're ready to call out that imposter, once and for all?]"
echo "[If you are, type "Yes". If not, type "No".]"
read input
case "$input" in
  Yes)
    ;;
  No)
    exit
    ;;
esac

clear
echo
echo "[You can press any button to advance the text forward by one line.]"
cont
echo
echo "You slam the emergency meeting button. A loud alarm blares throughout the ship's halls."
cont
echo "Minutes after hitting the button, every one of your crewmates arrives at the cafeteria, and with them... the imposter."
cont
echo "Echoes and whispers fill the room as you stare at the rest of your crew."
echo
cont
echo "${BLU}[BLUE]${NC}: 'Hey Captain, what's all this? I know the ship's all broken down, but we've been doin' our best to fix it."
cont
echo "${RED}[RED]${NC}: Yes, and I applaud you all for your work. As your Captain, I'm truly glad."
cont
echo "${GRN}[GREEN]${NC}: I mean... I appreciate the sentiment, but... did you really need to hit the button if you just wanted to tell us we've been doing a good job?"
cont
echo "${RED}[RED]${NC}: Right you are, ${GRN}[GREEN]${NC}. I didn't want the rest of you to panic, and even after telling you this information, I'm going to need you all to stay calm."
echo
cont
echo "Quiet murmurs fill the rest of the room."
cont
echo
cont
echo "${RED}[RED]${NC}: As some of you may know, I've been doing some investigation around the ship. Speaking to you all, wanting to know your whereabouts as well as those of our colleagues."
cont
echo "${RED}[RED]${NC}: One of you is not to be trusted. In short... there is an imposter among us. A suspicious individual seeking the fall of [SuSnix]."
echo
cont
echo "Arguments start to erupt throughout the room."
echo
cont
echo "${PNK}[PINK]${NC}: What the hell do you mean!?"
cont
echo "${CYN}[CYAN]${NC}: Yeah, seriously!? We could've all investigated had you just--"
cont
echo "${YLW}[YELLOW]${NC}: Investigating? More like covering for your a--"
cont
echo "${CYN}[CYAN]${NC}: You can't be serious. ${BOLD}YOU ${NC}think ${BOLD}I ${NC}am the sus one here!?"
cont
echo "${WHT}[WHITE]${NC}: I mean, ${CYN}[CYAN]${NC}... you ${BOLD}AND ${NC}${YLW}[YELLOW] ${NC}are acting kinda sus rig--"
cont
echo "${RED}[RED]${NC}: ${BOLD}EVERYONE, QUIET DOWN! IT'S FOR THIS EXACT REASON I DIDN'T WANT TO TELL ANY OF YOU!${NC}"
echo
cont
echo "The room begins to quiet down."
echo
cont
echo "${RED}[RED]${NC}: Now just stand and listen. As your ever reliable Captain, I've got our little imposter caught. They'll be ejected into the cold, harsh vacuum right after I reveal who."
cont
echo "${BLU}[BLUE]${NC}: Heh, yeah? And who'd that be? To think you'd suspect us, your own crew..."
cont
echo "${YLW}[YELLOW]${NC}: It is unbelievable, you know."
cont
echo "${RED}[RED]${NC}: Stand down, ${BLU}[BLUE]${NC}. The imposter is..."
cont
echo

read -p "Based on all of the clues you have gathered thus far, who is the impostor?" userInput
if [ "$userInput" != $finalImpostor ]
  then
  ../../dirs/imposterWrong.sh
  # ../../dirs/deleteData.sh
else
  ../../dirs/imposterCorrect.sh
  # ../../dirs/deleteData.sh
fi
