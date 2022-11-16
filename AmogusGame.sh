LD=$(tput bold)
NORMAL=$(tput sgr0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
BLUE=$(tput setaf 4)
NC=$(tput sgr0)
BLINK=$(tput blink)

function enter() {
        echo
        read -p "${BLINK}Press Enter to continue...${NORMAL}"
        clear
}
function bash() {
        dir="${PWD}"
        dir2=${dir:37}
        dir3=${dir:28}
        echo -ne "${GREEN}$userName${NC}:${BLUE}~$dir2${NC}$ "
        read -a words
        i=0
        for word in "${words[@]}"
        do
                arr[i]+=$word
                ((i++))
        done
        if [ $i == '1' ]
        then
                if [ ${arr[0]} == 'cd' ]
                then
                        cd ~/LarkProject/Locations
                elif [ ${arr[0]} == 'Quit' ] || [ ${arr[0]} == 'quit' ] || [ ${arr[0]} == 'Q' ] || [ ${arr[0]} == 'q' ]
                then
                        selected
                        break
                else
                        ${arr[0]}
                fi
        elif [ $i == '2' ]
        then
                if [ ${arr[0]} == 'cd' ] && [ ${arr[1]} == '..' ] && [ "$dir3" == 'Locations' ]
                then
                        echo "Please do not leave the play area."
                else
                        ${arr[0]} ${arr[1]}
                fi
        elif [ $i == '3' ]
        then
                ${arr[0]} ${arr[1]} ${arr[2]}
        else
                echo "lol"
        fi
        unset 'arr[0]'
        unset 'arr[1]'
        unset 'arr[2]'
        bash

}
function Savefile() {
        echo "$hint" > $saveFile
        echo "$userName" >> $saveFile
        echo "$impostorName" >> $saveFile
        echo "$tasksCompleted" >> $saveFile
}

function getSavefile() {
        hint=$( sed -n '1'p $saveFile )
        userName=$( sed -n '2'p $saveFile )
        impostorName=$( sed -n '3'p $saveFile )
        tasksCompleted=$( sed -n '4'p $saveFile )++
}
function impostor() {
        rnum=$[ $RANDOM % 10 ]
        colors=("Black" "Red" "Blue" "Orange" "Yellow" "Purple" "Brown" "Green" "Pink" "White")
        impostorName=${colors[rnum]}

}
function makeShip() {
        prefix="$PWD/$1"
        saveFile="$prefix/.$1.txt"
        if [ -d "$prefix" ];
        then
                read -p "Do you want to overwrite this existing save? (y/n) " overwrite
                case "$overwrite" in
                        y|Y|yes|Yes)
                                chmod -R 777 $prefix
                                rm -r $prefix
                                mkdir $prefix
                        ;;
                        n|N|no|No)
                                read -p "Please enter a new save name that does not contain a number: " prefix
                                if [ "$prefix" == "q" ] || [ "$prefix" == "Q" ] || [ "$prefix" == "quit" ] || [ "$prefix" == "Quit" ];
                                then
                                        exit
                                elif [ -d $prefix ];
                                then
                                        break
                                fi
                                mkdir $prefix
                                saveFile="$prefix/.$prefix.txt"
                        ;;
                        *)
                                echo "That is not a valid option"
                        ;;
                esac
        else
                mkdir $prefix
        fi
        touch $saveFile
        chmod +w $saveFile
        mkdir $prefix/ship
}
function black() {
        echo "Black"
}
function red() {
        echo "Red"
}
function blue() {
        echo "Blue"
}
function orange() {
        echo "Orange"
}
function yellow() {
        echo "Yellow"
}
function purple() {
        echo "Purple"
}
function brown() {
        echo "Brown"
}
function green() {
        echo "Green"
}
function pink() {
        echo "Pink"
}
function white() {
        echo "white"
}
function selected() {
        select option in Black Red Blue Orange Yellow Purple Brown Green Pink Map Location Help Quit;
        do
                case "$option" in
                        "Black")
                                black
                        ;;
                        "Red")
                                red
                        ;;
                        "Blue")
                                blue
                        ;;
                        "Orange")
                                orange
                        ;;
                        "Yellow")
                                yellow
                        ;;
                        "Purple")
                                purple
                        ;;
                        "Brown")
                                brown
                        ;;
                        "Green")
                                green
                        ;;
                        "Pink")
                                pink
                        ;;
                        "White")
                                white
                        ;;
                        "Map")
                                echo map
                        ;;
                        "Location")
                                cd LarkProject/Locations/Cafeteria
                                bash
                                break
                        ;;
                        "Help")
                                cat LarkProject/help.txt
                        ;;
                        "Quit")
                                Savefile
                                exit
                        ;;
                        *)
                        ;;
                esac
        done
}

select option in Play About Quit;
do
        case $option in
                "Play")
                        hint=0
                        tasksCompleted=0
                        impostor
                        break
                ;;
                "About")
                        cat LarkProject/readme.txt
                ;;
                "Quit")
                        exit
                ;;
                *)
                        echo "Use Numbers 1, 2, or 3"
                ;;
        esac
done

Folder=false
command=""
clear
while [ "$Folder" == "false" ];
do
        read -p "Do you have a save folder already? (y/n) " folderName
        case "$folderName" in
                y|Y|yes|Yes)
                        read -p "Whats your save folder called? (No Numbers) " folderName
                        if [ -d "$PWD/$folderName" ];
                        then
                                echo "Folder Found"
                                Folder=true
                                saveFile="$PWD/$folderName/.$folderName.txt"
                                getSavefile
                                prefix=$PWD/$folderName
                        else
                                echo "This directory does not exist. Please check to make sure there are no mistakes."
                        fi
                ;;
                n|N|no|No)
                        echo -e "Why don't you ${RED}m${NC}a${RED}k${NC}e a new ${RED}dir${NC}ectory."
                        echo "It must not contain a number."
                        read -p "${RED}mkdir${NC} " folderName
                        if [ "$folderName" == "q" ] || [ "$folderName" == "Q" ] || [ "$folderName" == "quit" ] || [ "$folderName" == "Quit" ];
                        then
                                exit
                        fi
                        makeShip "$folderName"
                        chmod +x "$folderName"
                        Folder=true
                        read -p "What is your name? " userName
                        Savefile
                        enter
                        cat LarkProject/Welcome.txt
                        enter

                ;;
                q|Q|quit|Quit)
                        exit
                ;;
                *)
                ;;
        esac
done
selected

