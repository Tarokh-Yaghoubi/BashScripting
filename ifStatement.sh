#!/bin/bash

firstnum=234
secondnum=346

command=htop

if [ "$firstnum" -eq 234 ]; then
	echo "$firstnum is equal to 234"
else
	echo "$firstnum is not equal to 234"
fi

if [ "$secondnum" -gt "$firstnum" ]; then
	echo "$secondnum is greater than $firstnum"
else
	echo "$firstnum is greater than $secondnum"

fi

if [ "$firstnum" -ne "$secondnum" ]; then
	echo "$firstnum is not equal to $secondnum"
	 
else
	echo "$firstnum is equal to $secondnum"

fi

# search for a file on the filesystem

if [ -f "$(pwd)/ifStatement.sh"  ]; then
	echo "The file exists"
else
	echo "The file does not exist"
fi


# It's ok to not use barackets when we don't want to use the 'test' command
# which is [

if command -v $command
then
	echo "$command is available, running it..."
else
	echo "$command is not available, installing it..."
	sudo apt update && sudo apt install -y $command
fi

# here we are using the test command, using the -n flag to check a strings
# length (if the length is zero or not)


if [ -n "" ]; then
	echo "tarokh is not zero lenghted"
else
	echo "tarokh has zero characters"
fi

# this is another way of using the 'test' command

# here you can also use paranthesis () to assert the expression
if test $firstnum -eq $secondnum
then
	echo "$firstnum and $secondnum are equals"
else
	echo "$firstnum and $secondnum are not equals"
fi


$command
