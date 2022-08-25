#!/bin/bash

# Tasks:
# write a one line command using || and && operators that does the following:
# creates a folder named Name_Surname 
# if folder creation was successful, creates a file inside, called my_file
# if file creation was successfull, writes "Hello" into the file
# if previous operation was successful, lists the contents of the file
# if any of the operations fail, print "Something went wrong"
# run the command two times
# write a command that outputs only users that have /usr/bin/false shell from /etc/passwd file and changes the shell to /bin/bash

#First pipeline 

#mkdir Boris_Johnson && touch ~/Boris_Johnson/my_file && echo "Hello" > ~/Boris_Johnson/my_file && cat ~/Boris_Johnson/my_file || echo "Something went wrong"

#Second pipeline
cat /etc/password | grep /usr/bin/false && sed -i 's/"/usr/bin/false"/"/bin/bash/"/' /etc/password

