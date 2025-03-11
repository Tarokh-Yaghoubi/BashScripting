#!/bin/bash


target=54
counter=3
while [ $counter -gt 0 ]
do
	read -p "Guess a number between (1-100): " guess
	counter=$(( $counter - 1 ))
	if [ $guess -eq $target ]; then
		echo "The guess is correct, target is -> $target"
		break
	elif [ $guess -lt $target ]; then
		echo "Too low, Try again"
	else
		echo "Too high, Try again"
	fi
done

echo "No more chances -> $counter"

