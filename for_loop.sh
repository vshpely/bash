#!/bin/bash

#Tasks:

#create a script that does the following:
#accepts any number of int arguments
#outputs the sum of all arguments
#outputs the number of arguments
#outputs the average of all arguments


sum=
ave=

for arg in $*
do
  echo "$arg"
  sum=$(($sum + $arg))
done
ave=$(($sum / $#))

echo "The sum of all arduments : $sum"
echo "The number of arguments : $#"
echo "The average of all arguments : $ave"
