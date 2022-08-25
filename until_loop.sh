#!/bin/bash

#Tasks:

#- create a script that does the following:

#reads a filename from user input
#combines specifyed file with itself until it reaches a size greater than 1024 KB
#- create a file using head -c 4KB /dev/urandom > file.txt command
#- execute your script passing the file you've just created

echo "Enter file name"
read file
touch $file
max_size=12000
filesize=0


until [ $filesize -ge $max_size ] 
do
  echo "$filesize"
  head -c 4KB /dev/urandom >> $file
  filesize=$(wc -c $file | awk '{print $1}')
  echo "$filesize"
  sleep 5
done



