#!/bin/bash
#31 Greetings Program
echo "Greetings accordig to system time"
echo "This program will greet the user"
hour=`date +%H`
user=`whoami`
if [ $hour -lt 12 ]
then
	echo good morning $user
elif [ $hour -gt 12 -a $hour -le 16 ]
then
	echo good afternoon $user
elif [ $hour -gt 16 -a $hour -le 24 ]
then
	echo Good night $user
fi
