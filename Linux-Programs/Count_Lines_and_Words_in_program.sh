#!/bin/bash
#29 Write a script to read from a file which is supplied as a command line argument and count the number  lines and words. If there is no filename supplied, the script should accept text from the keyboard.
# to run program: 
# create a file: file1.txt type some content
# to run prgm: bash prgmname.sh file1.txt
len=${#@}
echo
echo Count Lines and Words program
if [ $len -eq 0 ]
then
	file="myfile.txt"
	echo No files provided...
	echo Enter text and press ctrl+d to save
	cat >> $file
else
	file=$1
fi
echo -n The number of lines are:
wc -l < $file
echo -n and the number of words are:
wc -w < $file
