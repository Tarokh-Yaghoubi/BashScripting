#!/bin/bash

# In this file we can see which distro is the OS based-on

release_file=/etc/os-release
if grep -q "Ubuntu" $release_file -o grep -q "Pop" $release_file
then
	sudo apt update && sudo apt -y upgrade
fi

if grep -q "Arch" $release_file
then
	sudo pacman -Syu
fi
