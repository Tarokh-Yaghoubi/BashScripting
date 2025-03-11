#!/bin/bash

myvar=1

while [ $myvar -le 10 ]
do
	echo "$myvar"
	myvar=$(( $myvar + 1 ))
	sleep 0.5

done

# here we will check for a file 
# while the file exists, we will show the message
while [ -f ~/testfile ]
do
	echo "The test file exists as of $(date)"
	sleep 3
done

echo "the file no longer exists at $(date), exiting..."
