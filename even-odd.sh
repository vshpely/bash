#!/bin/bash

#Tasks 1:
#create a script called odd_even.sh that does the following:
#takes one argument
#if the number of letters in the argument is odd, outputs the message "Odd", else if the number of letters is even - outputs "Even"
#run the script first with "odd" argument, then with "even" argument
str=${#1}
res=$(($str % 2))
if [ "$res" -gt "0" ] ; then
  echo "Odd"
else
  echo "Even"
fi

#Task 2:
#create a script called my_script.sh that does the following:
#takes any number of arguments
#if there are less than 2 arguments, output the values of these arguments
#if there are more than 2 but less than 4 arguments, output only the last argument
#else output "Invalid number of arguments" message

if [ "$#" -lt 1  ] ; then
  echo "No entered agruments"
elif [ "$#" -lt 2 ] ; then
  echo "$1"
elif [ "$#" -lt 3 ] ; then
  echo "$1" "$2"
elif [ "$#" -lt 4 ] ; then 
  echo "$3"
else
  echo "Invalid number of arguments"
fi
 
