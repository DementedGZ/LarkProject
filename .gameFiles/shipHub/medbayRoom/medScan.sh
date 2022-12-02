if [ -f ../../clues/medbaycheck.txt ]
then
    echo "Scan has already been complete."
    echo "Complete vials task to obtain a clue."
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
    echo "If vials task already completed push vials button again."
    exit 0
fi
