#!/bin/bash

RED=$(tput setaf 1)
NC=$(tput sgr0)

cd .gameFiles/shipHub/adminRoom;

clear
echo
echo "As you walk into the admin room, a bright light greets you on the console."
echo "Welcome [UNKNOWN PASSENGER]. Make your identity known by entering your access code: "
echo
echo -e "You should have your ID stashed away in your pockets. See if you can ${RED}l${NC}i${RED}s${NC}t what's in them."
echo -e "Of course, once you've found it, you'll need to actually look at it. The old Captain was always interested in ${RED}cat${NC}s. I wonder why that is..."
echo "After that, you should be good to enter in the code. Just walk towards the console and type \"./access.sh\" to run the access script."
echo
