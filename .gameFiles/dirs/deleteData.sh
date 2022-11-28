#!/bin/bash
# deletes any data. includes basically just the clues the user has found + any visited flags

shipHub=~/LarkProject/.gameFiles/shipHub
clueFile=~/LarkProject/.gameFiles/pockets/foundClues/*

find $shipHub -name .visitedFlag -exec rm

if [ -f $clueFile ]
then
  rm $clueFile
fi
