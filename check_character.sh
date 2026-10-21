#!/bin/bash
# 08 program to READ a character and display
# it is a lowercase/uppercase/digit/any special character/not the above

echo Enter a Character
read ch

if [[ "$ch" =~ [A-Z] ]]
then
	echo The character is upper case.
elif [[ "$ch" =~ [a-z] ]]
then 
	echo The character is lower case.
elif [[ "$ch" =~ [0-9] ]]
then 
	echo The character is a digit.
elif [[ "$ch" =~ ['~!@#$%^&*()_+-={};:.,\|/']  ]]
then 
	echo The character is a special character.
else
	echo Invalid Characters
fi
