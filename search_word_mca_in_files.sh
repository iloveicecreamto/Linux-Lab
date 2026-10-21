#!/bin/bash
# 27. The word “mca” is present in some of the files supplied as arguments. Write a script to search each of  files, and to stop at the first file containing the word “mca” and report it.
# to run prgm: 
# 	create 2 txt  file  to run prgm
# 	chmod +x prgmname.sh
#	./prgmname.sh file1.txt file2.txt ....
echo
echo "The program to find word mca"

len=$#
flag=0

if [ "$len" -eq 0 ]
then
    echo "No arguments. Please provide some filenames."
    exit 1
else
    for i in "$@"
    do
        if grep -i -q "mca" "$i"
        then
            flag=1
            break
        fi
    done

    if [ "$flag" -eq 1 ]
    then
        echo "The word mca is found in the file $i"
        echo "The related content is:"
        grep -i "mca" "$i"

        echo
        echo "The number of times it occurs:"
        grep -o -i "mca" "$i" | wc -l
    else
        echo "The word mca is not found in any file"
    fi
fi
