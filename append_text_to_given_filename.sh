#!/bin/bash
# 18.Write a script to accept a filename while running the script and check it has the write permission, if  prompt the user to enter a text and append the text to the given filename.
#To run the prgm
# - create a file file.txt : type some content in it 
# - run the program : bash prgmname.sh 
# -  use file.txt as input
echo The file append program


echo -n "Enter file name : "
read file
#check the file exists or not
if test -f "$file"
then

	if [ -w $file ]
	then
		echo you have write permission on file: $file
		echo Enter text and press ctrl+d to save
		cat >> $file
	else
	echo no write permission
	fi
printf "\nThe Appended file " $file " is follows :\n"
cat $file
else
	echo The file does not exists!!
fi
#end of the program
