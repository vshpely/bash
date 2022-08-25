#!/bin/bash

#Tasks:

#- create console.sh script that does the following:

#implements console functionality - infinite loop that reads user input on each iteration
#supports commands:
#ls [dir] - lists the contents of specified directory
#pwd - shows the path to current directory
#hi - outputs "Hello <name of the current user>" 
#exit - ends the script

x=
reg=[ls \/]
while [[ $x != "exit" ]]
do
  read x 
  echo "$x"
  if [[ $x == "ls ~" ]] ; then
    echo `ls $HOME`
  elif [[ $x =~ "$reg" ]] ; then
    echo `$x`
  elif [ $x = "pwd" ] ; then
    echo `$x`
  elif [ $x = "hi" ] ; then
    echo "Hello" `whoami`
  fi
done
