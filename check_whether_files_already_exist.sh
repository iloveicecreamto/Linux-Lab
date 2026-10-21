#!/bin/bash
# 21. Write a shell script, which will receive any number of filenames as arguments .The shell script should  whether such files already exist.
# to run the program =>
# create 2 files : file1.txt file2.txt
# bash filename.sh file1.txt file2.txt
len=${#@}
if [ $len -eq 0 ]
then
	echo No arguments please use with some arguments
	exit
else
	echo Check files exists or not Program
for i in $@
do
	#-e Returns true value if file exists.
	if [ -e $i ]
	then
		echo $i " file exists "
	else
		echo $i " File not Exists "
	fi
done
fi
