#!/bin/bash

function zoo () {
echo "1. make dirs in home dir"
cd ~
rm -rf zoo
mkdir -p zoo/{predatoy/{table,leopard},birds/{parrot,chair}}

echo "2.1 fix names"
mv zoo/predatory/table zoo/predatory/lion
ls zoo/predatory/

echo "2.2 write fact to lion"
echo "parrots and lions" > zoo/predatory/lion/facts

echo "2.3 copy fact to parrot dir"
cp zoo/predatory/lion/facts zoo/birds/parrot/

echo "2.4 rename chair to chicken"
mv zoo/birds/chair/ zoo/birds/chicken/
ls zoo/birds/

echo "3. create 9 chickens"
touch zoo/birds/chicken/chicken{1..9}
ls zoo/birds/chicken/

echo "4. displlay reverse chickens"
ls -lr zoo/birds/chicken/ | tee zoo/birds/chicken/iChick
ls zoo/birds/chicken/

echo "5. creating babyshark group"
sudo groupadd babyshark
cat /etc/group | grep babyshark

echo "6.assigning read perms to others in x\chicken"
chmod -R g=r zoo/birds/chicken/

echo "7. display other perms"
ls -l zoo/birds/chicken/ | grep ^.......... | cut -c 8-10 | tee -a zoo/birds/chicken/iChick
cat zoo/birds/chicken/iChick

echo "8. delete zoo dir"
rm -rf zoo

echo "9. delete babyshark group"
sudo groupdel babyshark
cat /etc/group

echo "10. create Linux file"
echo -e “Linux is a great os.\nlinux is an opernsource. unix is free os.\nlearn operating system.\nlinux is easy to learn. \nlinux is a multiuser os. \nlearn unix. unix is \npowerful.” > Linux

echo "11. search linux words"
cat Linux | grep linux
}

function name () {
while [ 1 = 1 ]
	do  
		read -p "Enter a name to check: " name
			if [[ ${#name} -ge 5 ]]
				then    
					echo -e ${name^^}
					exit 5
			elif    [[ ${#name} -lt 5 ]]
				then
					echo "Enter anothe name"
			fi
	done
}

function square () {
square=0
i=1

read -p "Enter a num to square it: " num
	while [[ $i -le $num ]]
		do
				let square=square+num
				let i=i+1
		done

echo "Square of your num $num is equal to $square"
}

function pass () {
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
}

function colors () {
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
}

function selectmenu () {
OPT=("Current_Directory" "Home_Directory" "Quit")
select option in ${OPT[@]}
do
    case $option in
		"Current_Directory" ) ls -1  ;;
		"Home_Directory" ) ls -1 ~ ;;
		"Quit" ) exit 5 ;;
    esac
done
}

while true
	do
		echo "********************"
		echo "MAKE YOUR CHOICE NOW"
		echo "********************"
		echo "1. run make dirs"
		echo "2. run name script"
		echo "3. run square num"
		echo "4. run password check"
		echo "5. run colors"	
		echo "6. run select menu"	
		echo "7. exit"		
		read -p "Enter a num to check function: " c
    case $c in
		1) zoo  ;;
		2) name ;;
		3) square ;;
		4) pass ;;
		5) colors ;;
		6) selectmenu ;;
		7) exit 5 ;;
		*) echo "1-7 ONLY!!!" ; sleep 3 ;;
    esac
	done








