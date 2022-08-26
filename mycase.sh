#!/bin/bash


#Tasks:
# create a script called my_service.sh which does the following:
# accepts start, stop, restart arguments:
# start - outputs "Service started" message and sleeps for 9999
# stop - gets the PID of my_service.sh process and terminates it, then outputs "Service stopped" message
# restart - stops and then starts the service
# any other argument outputs script usage information
# add your service to PATH
# run your script with start and restart arguments in background
# run your script with stop and help arguments

pid=`pgrep mycase.sh`
echo "$pid"
case $1 in 
start) echo "service started" 
sleep 99
;;
stop) echo "service is stoped"
kill $pid
;;
restart) echo "service restart"
mycase.sh start &
kill $pid
echo "service is stoped"
echo "service is started"
;;
*) echo "[stop|start|restart]"
;;
esac
