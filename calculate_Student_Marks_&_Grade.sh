#!/bin/bash
# 07 Program to calculate Student Marks and Grade

echo "Student Marks and Grade Program"
echo "=================================="
echo "Enter the no of students"
read n
count=0
while [ "$count" -lt "$n" ]
do
    total=0
    echo "Enter the mark of student $((count+1))"
    echo "======================================="
    for (( i=1; i<=5; i++ ))
    do
        echo "Enter the mark of subject-$i"
        read mark

        total=$((total + mark))
    done
    percentage=$((total * 100 / 500))
    echo "TOTAL MARK: $total and PERCENTAGE: $percentage"

    if [[ $percentage -ge 80 ]]
    then
        echo "The Grade: DISTINCTION"

    elif [[ $percentage -ge 60 && $percentage -lt 80 ]]
    then
        echo "The Grade: FIRST CLASS"

    elif [[ $percentage -ge 50 && $percentage -lt 60 ]]
    then
        echo "The Grade: SECOND CLASS"
    else
        echo "The Grade: FAILED"
    fi
    ((count=count+1))

    echo "=================================="
done
