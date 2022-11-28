#!/bin/bash
# deletes any data. includes basically just the clues the user has found + any visited flags

shipHub=~/LarkProject/.gameFiles/shipHub
flagFile=$(find $shipHub -name .visitedFlag)
clueFile=~/LarkProject/.gameFiles/pockets/foundClues/*

if [ $flagFile ]
then
  rm $flagFile
fi

if [ -f $clueFile ]
then
  rm $clueFile
fi
