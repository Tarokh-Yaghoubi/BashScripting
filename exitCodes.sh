#!/bin/bash

directory=/etc
package=neofetch
sudo apt install $package

if [ "$?" -eq 0 ]; then
	echo "The installation of $package was successful"
	which $package
else
	echo "The installation of $package was not successful"

fi

if test -d $directory
then
	echo "the dir exists"
else
	echo "the dir does not exist"
fi	
