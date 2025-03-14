#!/bin/bash

nAttempt=3
username="tarokh"
password="1234"

while [ $nAttempt -gt 0 ]; do

	read -p "Enter your username: " user_name
      	read -p "Enter your password: " pass_word

	# here for 'OR' you can use -o if you want to user single brackets
	# if you wish yo use ||, you must use double-brackets [[...]]
	
	if [ "$user_name" != "$username" -o "$pass_word" != "$password" ]; then
		nAttempt=$(( nAttempt - 1 ))
		echo "username or password incorrect, attempts -> $nAttempt"
		
	elif [[ "$user_name" == "$username" && "$pass_word" == "$password" ]]
	then
		echo "user and pass are correct, entering..."
		sleep 2
		break
	fi

done

if [ $nAttempt -eq 0 ]; then
	echo "Too many attempts, exiting..."
	exit 1
	 
fi

