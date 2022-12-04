#!/bin/bash

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
echo "[You can press any button to advance the text forward by one line.]"
echo
cont
echo "${RED}[RED]${NC}: The imposter is you!"
cont
echo "${BLU}[BLUE]${NC}: What...?"
cont
echo "${GRN}[GREEN]${NC}: Captain, what are you talking about?"
cont
echo "${PNK}[PINK]${NC}: Uh, yeah. For real. What are you on about?"
cont
echo "${CYN}[CYAN]${NC}: I'm not sure how you can think that."
cont
echo "${YLW}[YELLOW]${NC}: Huh?"
cont
echo "${WHT}[WHITE]${NC}: ...do you even have any evidence to prove that?"
echo
cont
echo "Err... yeah. That's definitely what they'd say. Something's not right here. I've gotta look at one of the most common links between all the clues..."
echo
cont
echo "[Your choice for the imposter wasn't right. Review the evidence again.]"
echo "[Remember, you can view all your clues in the ${BLU}foundClues${NC} directory in your pocket! Try again once you think you've got 'em.]"
echo
exit
