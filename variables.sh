#!/bin/bash

myname="tarokh"
age="20"

# we call this a sub-shell
date=$(date)

# If i use single quote, it will assume that I am looking for $myname itself
# not the variable rvalue

files=$(ls)

echo "Your username is: $USERNAME"
echo "current date is: ${date}"
echo "my name is $myname"
echo "I am $age years old"
echo "files in the current working directory are:"
echo "$files"

