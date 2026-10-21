#!/bin/bash
#28 Write a script to receive any number of filenames as arguments and to check whether the arguments is a file or directory. If it is a directory, it should be appropriately reported. if it is a filename  name of the file as well as the number of lines present in it should be reported.
	
# create a  filename.txt - type something in it 
# to run a prgm: 	bash filename.txt

len=${#@}
echo
echo The File and Directory checking program
if [ $len -eq 0 ]
then
	echo No arguments please use with some arguments
	exit
else
	echo Check files exists or not 
	for i in $@
	do
#-e Returns true value if file exists.
	if [ -d $i ]
	then
		echo $i " is a Directory"
	else
	echo $i " is a file "
	echo -n and the number of lines are:
	wc -l < $i
	fi
done
fi
