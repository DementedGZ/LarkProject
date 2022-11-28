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
echo "3) Delete Data"
echo "4) Quit"
echo

read -p "> " input
case "$input" in
  1)
    cd .gameFiles/dirs
    ./dirCheck.sh &
    source beginning.sh
    ;;
  2)
    clear
    cat readme.txt
    retrn
    ;;
  3)
    clear
    cat .gameFiles/title.txt
    echo
    echo "Are you sure you would like to delete data? This will include any acquired clues. (y/n)"
    read confirm
    case "$confirm" in
      y)
        echo
        echo "Deleting previous data..."
        .gameFiles/dirs/deleteData.sh
        echo
        retrn
        ;;
      n)
        echo
        retrn
        ;;
      *)
        ;;
    esac
    ;;
  4)
    clear
    return 0
    ;;
esac
