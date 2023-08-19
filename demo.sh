#!/bin/sh
cnt=0
while [ $cnt -lt 3 ]
do
	sleep 2 
	cmd=`ps | grep demo | grep -v grep | awk '{printf $4}' | awk -F/ '{printf $3}'`
	if [ ${cmd}"A" = demo"A" ]
	then
		echo "The app is running !!!"
		cnt=0
	else
		echo "The app is quit[$cnt]!!!"
		#cnt=`expr $cnt + 1`
	fi
done

reboot