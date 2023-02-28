#!/bin/bash

square=0
i=1

read -p "Enter a num to square it: " num
	while [[ $i -le $num ]]
		do
				let square=square+num
				let i=i+1
		done

echo "Square of your num $num is equal to $square"

