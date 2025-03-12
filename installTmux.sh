#!/bin/bash


if [ -f  /bin/tmux ]
then
	echo "file does exist, exiting..."
	exit 0
else
	echo "file does not exist, installing it..."
	sleep 1
	sudo apt update && sudo apt install -y tmux 
fi

echo "Installed tmux"
