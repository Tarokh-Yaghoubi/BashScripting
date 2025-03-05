#!/bin/bash

directory=/etc
package=neofetch
anotherDirectory=/notexist

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

if [ -d $anotherDirectory ]; then
	echo "Here the exit code is $?"
	echo "The $anotherDirectory exists"
else
	echo "Here the exit code is $?"
	echo "The $anotherDirectory does not exist"
	echo "But here it is -> $?" 
fi

echo "--------------LETS DO SOMETHING ELSE---------------"
if [ -d $anotherDirectory ]
then
	echo "The $directory does  exist"
	exit $?

else
	echo "The exit code is now $?"
	exit $?
fi

