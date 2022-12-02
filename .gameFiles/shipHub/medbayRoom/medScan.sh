if [ -f ../../clues/medbaycheck.txt ]
then
    echo "Scan has already been complete."
else
    touch ../../clues/medbaycheck.txt
    sleep 2
    echo "ID: Stw3rkUS"
    sleep 2
    echo "HT: 5' 8"
    sleep 2
    echo "WT: 160lb"
    sleep 2
    echo "BT: AB+"
    sleep 2
    echo "Scan Complete"
    exit 0
fi
