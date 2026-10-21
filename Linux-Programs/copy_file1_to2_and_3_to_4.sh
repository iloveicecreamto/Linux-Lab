#!/bin/bash
#30 Write a shell script which receives an even number of file names. Suppose four file names are supplied  the first file should get copied into the second file, the third file should get copied into the fourth , and so on. If odd numbers of file names are supplied then no copying should take place and an  message should be displayed.

# create 4 files: file1.txt file2.txt file3.txt file4.txt
# command to create files: touch file1.txt
# to run program: bash prgmname.sh file1.txt file2.txt file3.txt file4.txt

len=${#@}
echo File copying program
if [ $len -eq 0 ]
then
	echo No arguments please use with some arguments
	exit
elif [ `expr $len % 2` -eq 0 ]
then
	for ((i=1; i<$len; i+=2))
	do
		if [ -f ${!i} ]
		then
			((j=i+1))
			cp ${!i} ${!j}
			echo Files Copied ${!i} to ${!j}
		else
			echo ${!i} " File not Exists "
		fi
	done
else
	echo you are entered odd files
	echo Error!!
fi
