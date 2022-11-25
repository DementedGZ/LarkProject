#!/bin/bash

retrn(){
read -n 1 -s -r -p "Press any key to go back to the menu." input
case "$input" in
  *)
    source startScript.sh
    ;;
esac
}

clear
cat .gameFiles/title.txt
echo
echo "1) Start Game"
echo "2) README"
echo "3) Quit"
echo

read -p "> " input
case "$input" in
  1)
    source .gameFiles/dirs/beginning.sh
    ;;
  2)
    clear
    cat readme.txt
    retrn
    ;;
  3)
    return 0
    ;;
esac
