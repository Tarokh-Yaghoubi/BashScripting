#!/bin/bash


read -p "Enter a number for countdown: " countdown

while [ $countdown -gt 0 ]
do
	echo "timer -> $countdown"
	sleep 1
	countdown=$(( $countdown - 1 ))

	# just create a file for stopping the timer

	if [ -f ~/timeBreaker ]; then
		echo "timeBreaker is there!, exiting..."
		sleep 3
		break
	fi
done

echo "Time's Up! , Countdown -> $countdown"
