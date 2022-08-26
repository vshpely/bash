#!/bin/bash

#Tasks:

#- create a script that does the following:

#accepts any number of arguments
#prints all arguments in the following format "Arg1: <arg1 value>", "Arg2: <arg2 value>"
#adds the value of the next argument to the previous one and prints it out (for the last argument add the value of the first one)


count=$#
i=1
declare -a array
while [ $i -le $count ]
do
  echo "Arg $i: ${!i}" 
  t=0
  k=$(($i + 1))
  if [ $i -lt $count ]; then
    t=$((${!i} + ${!k}))
    array[i-1]=$t
  elif [ $i -eq $count ]; then
    t=$((${!i} + $1))
    array[i-1]=$t
  fi
  let ++i
done
echo ${array[@]}
echo ${!array[@]}
