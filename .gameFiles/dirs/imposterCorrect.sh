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

if [ -f pockets/foundClues/adminClue ]
then
  echo "${RED}[RED]${NC}: First, the admin room. Someone had entered prior to me getting my mission and attempted to erase any trace that they had been there."
  cont
  echo "${BLU}[BLUE]${NC}: Yeah? Anyone can access the admin room's console. Pretty weak evidence you've got there, Cap."
  cont
  echo "${RED}[RED]${NC}: Of course. If that was all, then I couldn't possibly convict you. Do you really think this is all I have?"
  echo
  cont
fi

if [ -f pockets/foundClues/securityClue ]
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

if [ -f pockets/foundClues/navigationClue ]
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

if [ -f pockets/foundClues/electricalClue ]
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

if [ -f pockets/foundClues/medbayClue ]
then
  echo "${RED}[RED]${NC}: The medbay's vials were tampered with."
  cont
  echo "${RED}[RED]${NC}: Space diseases don't just pop up into any vial."
  cont
  echo "${BLU}[BLUE]${NC}: So?"
  cont
  echo "${RED}[RED]${NC}: There are only four people who can even access the vials. You should know them well, ${BLU}[BLUE]${NC}."
  cont
  echo "${RED}[RED]${NC}: I, as Captain, have access of course, but we also have three MDs on board all capable of accessing the samples."
  cont
  echo "${CYN}[CYAN]${NC}: That'd be me, ${YLW}[YELLOW]${NC} and... ${BLU}[BLUE]${NC}!"
  cont
  echo "${BLU}[BLUE]${NC}: That implicates all of us, don't it, Cap?"
  cont
  echo "${CYN}[CYAN]${NC}: Why would we even ${BOLD}WANT ${NC}to contaminate the samples!? You know how long it took to get them!"
  cont
  echo "${YLW}[YELLOW]${NC}: Do you really think we would just throw those away?"
  cont
  echo "${BLU}[BLUE]${NC}: I agree, obviously."
  cont
  echo "${CYN}[CYAN]${NC}: ...do you, now...?"
  echo
  cont
fi

if [ -f pockets/foundClues/weaponsClue ]
then
  echo "${RED}[RED]${NC}: How many of you knew that our course had been charted right by a damn asteroid belt?"
  cont
  echo "${BLU}[BLUE]${NC}: Are you sure you're even tryna eject me? Everyone here knows ${PNK}[PINK]${NC} deals with our navigations!"
  cont
  echo "${PNK}[PINK]${NC}: I don't if you're trying to imply I'm ${BOLD}STUPID${NC} or if you're deflecting incredibly hard."
  cont
  echo "${PNK}[PINK]${NC}: I wanna live too, you know! Why would I even take a risk as stupid as running straight into space rocks!? To save 5 minutes on our trip!?"
  cont
  echo "${RED}[RED]${NC}: Of course. ${PNK}[PINK]${NC} has since diverted our course--after the meteors were removed, of course."
  cont
  echo "${PNK}[PINK]${NC}: Not to mention it's the easiest thing to catch! Anyone can look outside and see the set of ${BOLD}SPACE BOULDERS${NC} preparing to ram right into our starboard!"
  cont
  echo "${RED}[RED]${NC}: And the fact that the ship automatically stops at the detection of any danger."
  echo
  cont
fi

if [ -f pockets/foundClues/storageClue ]
then
  echo "${RED}[RED]${NC}: I'm not sure who was on garbage duty, but someone forgot something."
  cont
  echo "You whip out the half-burnt document."
  cont
  echo "${RED}[RED]${NC}: Each and every document that gets transfered to or printed on this ship is documented and saved."
  cont
  echo "${RED}[RED]${NC}: As you can see here, however, this was sent from someplace other than [SkALd]. And in the middle of the document?"
  cont 
  echo "${BLU}[BLUE]${NC}: ${RED}[RED]${NC}, ${GRN}[GREEN]${NC}, and ${WHT}[WHITE]${NC}. And obviously that implies th--"
  cont
  echo "${RED}[RED]${NC}: That we had a hand in the sabotage? Sorry, but I'm going to shoot that down. It seems to me, and likely to the rest of the crew..."
  cont
  echo "${WHT}[WHITE]${NC}: ...that implies that ${BOLD}WE${NC} were the targets! To be framed, killed, whatever!"
  cont
  echo "${WHT}[WHITE]${NC}: I think ${GRN}[GREEN]${NC} can agree... the only thing this can mean is that we were all targeted..."
  cont
  echo "${GRN}[GREEN]${NC}: ...and that the rest of the crew was likely on that list as well. Just... burned off."
  cont
  echo "${BLU}[BLUE]${NC}: Or it implies that ${BOLD}ALL${NC} of you are workin' together!"
  cont
  echo "${RED}[RED]${NC}: With how much evidence is stacked against you, I'd hope you recognize how ridiculous that sounds..."
  echo
  cont
fi

if [ -f pockets/foundClues/reactorClue ]
then
  echo "${RED}[RED]${NC}: The manifolds were locked when I had arrived into the reactor room."
  cont
  echo "${RED}[RED]${NC}: Fairly unusual, wouldn't you agree?"
  cont
  echo "${CYN}[CYAN]${NC}: It sure is. When I had left, I had ensured the manifolds were open."
  cont
  echo "${CYN}[CYAN]${NC}: But I'm not the only one who deals with the reactor..."
  cont
  echo "${RED}[RED]${NC}: That's right... ${BLU}[BLUE]${NC}. You also have a hand in that, don't you?"
  cont
  echo "${BLU}[BLUE]${NC}: ..."
  echo
  cont
fi

if [ -f pockets/foundClues/engineClue ]
then
  echo "${RED}[RED]${NC}: And finally, the engine room."
  cont
  echo "${RED}[RED]${NC}: When I entered, the engines were damn near entirely out of fuel."
  cont
  echo "${RED}[RED]${NC}: Had it not been for me, we wouldn't have been able to continue on our expedition."
  cont
  echo "${RED}[RED]${NC}: And, ${BLU}[BLUE]${NC}, I'm sure you remember just who was on refuel duty?"
  cont
  echo "${BLU}[BLUE]${NC}: ..."
  cont
  echo "${RED}[RED]${NC}: While everyone was doing their jobs, you neglected your own."
  cont
  echo "${RED}[RED]${NC}: And you did so to sabotage the rest of the ship..."
  echo
  cont
fi

echo "${RED}[RED]${NC}: I hope you are all convinced. As per procedure, you all may vote for one candidate of the crew to be sent for ejection."
cont
echo "${BLU}[BLUE]${NC}: Damnit..."
cont
clear
echo
echo "After a short while, all votes are cast."; sleep 1
echo
echo "[VOTES INPUTTED:]"; sleep 1
echo "[${RED}[RED]${NC} VOTES: ${BLU}[BLUE]${NC}]"; sleep 1
echo "[${GRN}[GREEN]${NC} VOTES: ${BLU}[BLUE]${NC}]"; sleep 1
echo "[${YLW}[YELLOW]${NC} VOTES: ${BLU}[BLUE]${NC}]"; sleep 1
echo "[${PNK}[PINK]${NC} VOTES: ${BLU}[BLUE]${NC}]"; sleep 1
echo "[${CYN}[CYAN]${NC} VOTES: ${BLU}[BLUE]${NC}]"; sleep 1
echo "[${WHT}[WHITE]${NC} VOTES: ${BLU}[BLUE]${NC}]"; sleep 1
echo "[${BLU}[BLUE]${NC} VOTES: ${RED}[RED]${NC}]"; sleep 1
echo
echo "[PROCEEDING WITH PROTOCOL, ${BLU}[BLUE]${NC} WILL BE EJECTED POSTHASTE.]"
echo "[SUIT OF CREWMATE ${BLU}[BLUE]${NC} HAS BEEN RESTRAINED.]"
echo
cont
clear
echo
echo "[${BLU}[BLUE]${NC} HAS BEEN EJECTED.]"
echo "[${BLU}[BLUE]${NC} WAS THE IMPOSTER.]"
echo
cont
echo "Later on, the ship was fully repaired. Having lost one crew member, and a once precious friend, the rest of [SuSnix] was left astray."
cont
echo "A status report was sent to [SkALd HQ] soon after the incident."
cont
echo "Other crews were not alerted to this incident--but those affected had been shook to their core."
cont
echo "But, they knew that sitting on it would achieve nothing. All they could do was move forward."
echo
echo "[Press any button to continue.]"
echo
cont

cluecount=$(ls ../pockets/foundClues | wc -l)
if [ $cluecount -lt 16 ]
then
  echo "You found $cluecount clues! There are still a few you could have collected."
  echo "That being said, great job completing the game!"
  echo "If you would like to restart, you can run the startScript again and delete your data."
  echo
  echo "Thanks for playing!"
  echo
elif [ $cluecount = 16 ]
then
  echo "You found all 9 clues! Great job!"
  echo "If you would like to restart, you can run the startScript again and delete your data."
  echo
  echo "Thanks for playing!"
  echo
fi
