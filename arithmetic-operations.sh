# Write a script to read any 2 floating values and find the sum, difference, quotient, and remainder.
#!/bin/bash
echo  Enter the 1st number
read a
echo  Enter the 2nd number
read b



sum=`expr "$a + $b" | bc`
pro=`expr "$a * $b" | bc`
div=`expr "$a / $b" | bc`
mod=`expr "$a % $b" | bc`
diff=`expr "$a - $b" | bc`


echo The sum is: $sum
echo The difference is: $diff
echo The product is: $pro
echo The reminder is: $mod
echo The division is: $div
