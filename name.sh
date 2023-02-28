#!/bin/bash

while [ 1 = 1 ]
	do  
		read -p "Enter a name to check: " name
			if [[ ${#name} -ge 5 ]]
				then    
					echo ${name^^}
					exit 5
			elif    [[ ${#name} -lt 5 ]]
				then
					echo "Enter anothe name"
			fi
	done

