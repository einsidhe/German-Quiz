#!/bin/bash

declare -A dict

dict["anstatt"]="instead of"
dict["dadurch"]="because of"
dict["damals"]="at that time"
dict["daran"]="to that"
dict["dazu"]="with that"
dict["deswegen"]="therefore"
dict["dennoch"]="nontheless"
dict["herauf"]="up to"
dict["herunter"]="down to"
dict["hinauf"]="up from"
dict["hinuber"]="over"
dict["hinunter"]="down from"
dict["indem"]="while"
dict["infolge"]="as a result"
dict["obwohl"]="although"
dict["wobei"]="where"
dict["wodurch"]="by what"
dict["wofur"]="what for"
dict["wogegen"]="whereas"
dict["womit"]="with what"
dict["wonach"]="after what"
dict["wovon"]="of what"
dict["wovor"]="from what"
dict["wozu"]="why"


function quiz() {
    while true; do
	key=$(shuf -n 1 -e "${!dict[@]}") 
        clear
	read -p "What is '$key'? " answer

        if [[ "$answer" == "exit" ]]; then
            echo -e "\nGame Over 🎉"
            echo "Correct answers: $correct"
            echo "Wrong answers: $wrong"
            sleep 3
	    clear
	    break
        elif [[ "$answer" == "${dict[$key]}" ]]; then
            echo -e "\n✅ Correct!\n"
            ((correct++))
	    sleep 1
        else
            echo -e "\n❌ Wrong! The answer is: ${dict[$key]}\n"
            ((wrong++))
	    sleep 2
        fi
    done
}

quiz

