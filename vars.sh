#!/bin/bash

Tasks:

#- in your home folder create a file named vars 

#- add a variable called FILE with value new_file to vars file 

#- in your home folder create a script that does the following:

#has NAME variable equal to your Name_Surname
#sources vars file
#creates a folder with name from NAME variable
#creates a file in created folder with name from FILE variable
#lists the contents of home folder and created folder

source var
NAME="Chirnyi_Petro"
mkdir $NAME
cd $NAME
touch $FILE
ls ~/homework
ls ~/homework/$NAME


