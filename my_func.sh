#!/bin/bash
#Tasks:

#- create a script that does the following:

#has a function that multiplies the argument passed to it by itself
#has a second function that passes each argument passed to the script to the first function and increases the result by 1 and outputs to the console



t=0
mult() {
  t=$(($1*$1))
  return $t;

}

my_func() {
  for arg in $*
do
  mult $arg
  rez=$(( $? + 1))
  echo "$rez";
done

}


if [ $# -eq 0 ]; 
  then
  echo "No arguments"
elif [ $# -gt 0 ];
  then 
  my_func $@
fi

