#!/bin/bash
#20 Write a shell script which receives two file names as arguments.It should check whether the two file’s are the same or not .If they are the same, delete the second file.
# create 2 file :  file1.txt file2.txt
# to run prgm:   bash prgm20.sh file1.txt file2.txt
len=${#@}
if [ $len -eq 0 ]
then
	echo No arguments please use with two arguments
	exit
else
	file1=$1
	file2=$2
	if [ -f $file1 -a -f $file2 ]
	then
		echo The file Comparison Program
		#Checking the files are equal
		if cmp -s "$file1" "$file2"; then
		printf 'The file "%s" is the same as "%s"\n' "$file1" "$file2"
		read -p "do you want to delete the second file y/n " chk
		if [ "$chk" = "y" ]
		then
			rm $file2
			echo The second duplicate file deleted...
			fi
		else
			printf 'The file "%s" is different from "%s"\n' "$file1" "$file2"
		fi
	else
		echo "File(s) not exists!"
	fi
fi
