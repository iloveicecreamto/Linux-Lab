#!/bin/bash
#05 calculate the gross salary
echo The program to find Gross Salary
echo Enter total no of employees
read n
echo -------------------------------------
count=1
while [ $count -le $n ]
do
	echo enter the basic salary of employee
	read bsalary
	if [ $bsalary -lt 15000 ]
	then
		gsal=`expr "$bsalary + ($bsalary * .3) + 500 + ($bsalary * .1)" | bc`
		echo the gross salary is $gsal
	else
		gsal=`expr "$bsalary + ($bsalary * .5) + 1000 + ($bsalary * .15)" | bc`
		echo the gross salary is $gsal
	fi
	((count = count + 1))
	echo -------------------------------------
done

