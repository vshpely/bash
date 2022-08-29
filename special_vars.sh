#1/bin/bash

#Tasks:

#- create a script that does the following:

#prints the name of the script
#prints all arguments
#prints the number of arguments passed to the script
#prints 2nd and 4th argument
#print the exit code of -eq operation on 1st and 2nd arguments (use [[]])
#- execute your script like this: ./my_script.sh 1 2 hello world

#- change the script arguments so that the result of the last operation (-eq) would be 0

#- run the script again with new arguments

echo "$0"
echo $*
echo $#
echo $2$4
if [ $1 -eq $2 ]
then
echo $?
else 
echo $?
fi
