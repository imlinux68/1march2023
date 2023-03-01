#! /bin/bash



while :
	do
	read -p "Enter your fav color: " col
		case $col in
			blue )   echo "Blue is a primary color" ;;
			red )    echo "Red is a primary color" ;;
			yellow ) echo "Yellow is a primary color" ;;
			green )  echo "Green is a secondary color" ;;
			    * )  echo "Only blue-red-green-yellow!!!!" ; sleep 3 ;;
		esac
	done

