#! /bin/bash

OPT=("Current_Directory" "Home_Directory" "Quit")
select option in ${OPT[@]}
do
    case $option in
		"Current_Directory" ) ls -1  ;;
		"Home_Directory" ) ls -1 ~ ;;
		"Quit" ) exit 5 ;;
    esac
done

