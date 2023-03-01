#!/bin/bash

while :
do
    read -sp "Enter a pass: " pass
	len=${#pass}

    if [[ $len -ge 8 ]]
		then
		    echo "Password is long enough"
    else    
        echo "You lose!"
    fi
done

