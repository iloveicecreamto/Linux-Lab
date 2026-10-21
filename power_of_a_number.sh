#!/bin/bash
#10 Program to find the power of number
echo find the power of number
echo "Input number"
read a
echo "Input power"
read b
counter=0
ans=1
while [ $b -ne $counter ]
do
	ans=`expr $ans \* $a`
	counter=`expr $counter + 1`
done
echo "$a power of $b is $ans"
#End of the program
