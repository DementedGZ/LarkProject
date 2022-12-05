#!/bin/bash
# deletes any data. includes basically just the clues the user has found + any visited flags

shipHub=.gameFiles/shipHub

find "$shipHub" -name ".visitedFlag" -delete

find "$shipHub/electrical" ! -name "\[GREEN\]" ! -name "wireTest.sh" ! -name "pockets" ! -name "cut"* ! -name "wireEnd" ! -name "electrical" -delete

rm -f .gameFiles/pockets/foundClues/*Clue 

rm -f .gameFiles/pockets/handbook
cp .gameFiles/copy/handbook .gameFiles/pockets/handbook

find "$shipHub/engineRoom/gasCan" ! -name ".keep" ! -name "gasCan" -delete

rm -f $shipHub/medbay/inspectionResults.txt
rm -f $shipHub/medbay/.inspectionCheck
[ -d $shipHub/medbay/vials ] && mv -f $shipHub/medbay/vials $shipHub/medbay/.vials
touch $shipHub/medbay/.vials/vial{1..5}

touch $shipHub/weaponsRoom/turretScope/meteor{1..5}

rm -f $shipHub/storageRoom/chute/garbage*
cp .gameFiles/copy/garbage* $shipHub/storageRoom

rm -f $shipHub/reactor/console/input*
cp .gameFiles/copy/input* $shipHub/reactor
