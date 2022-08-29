#!/bin/bash
#Tasks:

#- create a script file in your home directory that does the following:

#checks if 1st and 2nd string arguments are equal and outputs the exit code of this operation
#checks if 1st string argument is longer than 2nd string argument and outputs the exit code of this operation
#checks if variable TEST is present in the environment (has non-zero length) and outputs the exit code of this operation
#checks if 3rd and 4th integer arguments are not equal and outputs the exit code of this operation
#checks if 3rd integer argument is greater or equal to 4th integer argument and outputs the exit code of this operati


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
