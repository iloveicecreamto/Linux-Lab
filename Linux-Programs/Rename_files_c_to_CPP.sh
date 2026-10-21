#!/bin/bash
#26. Write a script to rename all c files to cpp files. 
# run this command in terminal: mkdir etc 
# 			  then:  cd etc
# add 5 files prgm1.c - prgm5.c:  touch prgm1.c 
# bash prgmname.sh

cd etc
echo Program to Rename files
echo "List of files in the directory"
for f in *.c
do
	echo "$f"
done
echo
for f in *.c
do
	mv "$f" "${f%.*}.cpp"
done
echo
echo The renamed files are
for f in *.cpp
do
	echo "$f"
done
