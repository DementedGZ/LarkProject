#!/bin/bash
# deletes any data. includes basically just the clues the user has found + any visited flags

shipHub=~/LarkProject/.gameFiles/shipHub
clueFile=~/LarkProject/.gameFiles/pockets/foundClues/

find "$shipHub" -name ".visitedFlag" -delete

for i in "$clueFile"/*
do
  rm "$i"
done

rm -f $shipHub/medbay/inspectionResults.txt
rm -f $shipHub/medbay/.inspectionCheck
[ -f $shipHub/medbay/vials ] && mv -f $shipHub/medbay/vials $shipHub/medbay/.vials
