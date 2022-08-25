#!/bin/bash
# порівняння змінних
#first=$1
#second=$2
#TEST=2 
#echo $first
#echo $second


[ $1 -eq $2 ]
echo $?
[[ $1 > $2 ]]
echo $?
[ -z $TEST ]
echo $?
[[ $3 != $4 ]]
echo $?
[[ $3 -gt $4 ]]
echo $?
