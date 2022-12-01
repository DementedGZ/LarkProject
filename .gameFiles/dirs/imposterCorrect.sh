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
echo "${RED}[RED]${NC}: ${BLU}[BLUE]${NC}! The imposter is you!"
cont
echo "${BLU}[BLUE]${NC}: Heheh. Excuse me? How could it possibly have been me?"
echo
cont

if [ -f pockets/adminClue ]
then
  echo "${RED}[RED]${NC}: First, the admin room. Someone had entered prior to me getting my mission and attempted to erase any trace that they had been there."
  cont
  echo "${BLU}[BLUE]${NC}: Yeah? Anyone can access the admin room's console. Pretty weak evidence you've got there, Cap."
  cont
  echo "${RED}[RED]${NC}: Of course. If that was all, then I couldn't possibly convict you. Do you really think this is all I have?"
  echo
  cont
fi

if [ -f pockets/securityClue ]
then
  echo "${RED}[RED]${NC}: Next, the security room. Much like what had happened in the admin room, someone attempted to access the security console, and erase their trace."
  cont
  echo "${RED}[RED]${NC}: Unlike what had happened in the admin room, however, our perpetrator was sloppy at his job. The tail end of the login catalog had two different names: "
  cont
  echo "${RED}[RED]${NC}: ${BLU}[BLUE]${NC} and ${PNK}[PINK]${NC}."
  cont
  echo "${BLU}[BLUE]${NC}: Again, anyone can access the security console, Cap. And ${PNK}[PINK]'s${NC} name is right there with me! Yet ${BOLD}I'M ${NC}the imposter?"
  cont
  echo "${PNK}[PINK]${NC}: It couldn't have been me! I know for a ${BOLD}FACT ${NC}that I logged in before you, ${BLU}[BLUE]${NC}."
  cont
  echo "${RED}[RED]${NC}: She's right, you know. While both names were corrupted, yours was closer to the bottom of the log."
  cont
  echo "${RED}[RED]${NC}: It wouldn't make sense for ${PNK}[PINK]${NC} to have corrupted the data herself; otherwise, ${BOLD}YOUR ${NC}data would have been left fine."
  cont 
  echo "${BLU}[BLUE]${NC}: Tsk... Still, it couldn't have been me. Why does the data have to be corrupted intentionally? Data corrupts all the damn time! You should know as much!"
  echo
  cont
fi

if [ -f pockets/navigationClue ]
then
  echo "${RED}[RED]${NC}: The navigation room as well had something peculiar happen."
  cont
  echo "${RED}[RED]${NC}: There was a file transfer made there. Nothing out of the ordinary on its face."
  cont
  echo "${RED}[RED]${NC}: And before you get started, ${BLU}[BLUE]${NC}, yes, there was something interesting that happened there."
  cont
  echo "${RED}[RED]${NC}: A file transfer was made to a server other than [SkALd HQ]. And in addition to that--"
  cont
  echo "${BLU}[BLUE]${NC}: You found some hippy dippy clue that's supposed to link it to me, right?"
  cont
  echo "${RED}[RED]${NC}: I'll give you some credit here, ${BLU}[BLUE]${NC}. It's possible that this clue could link to three other members..."
  cont
  echo "${RED}[RED]${NC}: The name on the transfer had either an E, L, or both in it. That could link it to--"
  cont
  echo "${BLU}[BLUE]${NC}: Me, ${WHT}[WHITE]${NC}, ${YLW}[YELLOW]${NC}, or ${GRN}[GREEN]${NC}."
  cont
  echo "${YLW}[YELLOW]${NC}: Normally that would be bad but... a lot of the evidence is stacked against you here, ${BLU}[BLUE]${NC}. Occam's razor."
  cont
  echo "${WHT}[WHITE]${NC}: And all of your argumentation is making you even more suspicious, man. You really should just give it u--"
  cont
  echo "${BLU}[BLUE]${NC}: You both should quiet down when that's still proof linked to you..."
  echo
  cont
fi

if [ -f pockets/electricalClue ]
then
  echo "${RED}[RED]${NC}: Electrical room. The wires--they couldn't have just exploded. They were cut."
  cont
  echo "${BLU}[BLUE]${NC}: You mean, the room where anyone can just waltz in and screw stuff up? You're really reachi--"
  cont
  echo "${RED}[RED]${NC}: I had seen both you and ${GRN}[GREEN]${NC} enter there earlier, before the lights had dimmed."
  cont
  echo "${BLU}[BLUE]${NC}: Again--anyone can just waltz on in there. ${GRN}[GREEN]${NC} ain't suspicious at all because...?"
  cont
  echo "${RED}[RED]${NC}: Firstly, you entered after ${GRN}[GREEN]${NC} did. He was in there for a while, yet nothing significant happened. It couldn't take that long to cut some wires."
  cont
  echo "${BLU}[BLUE]${NC}: That means nothing! What if he was waiting there to frame me, huh? Ever thought of that? Like you said, it doesn't take any time to cut the wires!"
  cont
  echo "${GRN}[GREEN]${NC}: Oh, can it! I had to calibrate the distributors and divert power to other parts of the ship. I had no reason to even ${BOLD}LOOK ${NC}at the wires, let alone touch them."
  cont
  echo "${GRN}[GREEN]${NC}: ${BOLD}YOU${NC}, on the other hand, spent damn near no time at all in there! You could've walked in just to fart and you would've spent longer in there."
  cont
  echo "${BLU}[BLUE]${NC}: Hrgh... Either way, that's just hearsay! ${GRN}[GREEN]${NC} could be talkin' right outta his ass..."
  echo
  cont
fi
















