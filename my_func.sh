#!/bin/bash

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

