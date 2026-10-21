# 9. Multiplication Table


echo enter the no to find the Mul table
read n
echo enter the range upto where the table required
read r

i=0 
while [ $i -le $r ]
do
  echo "$n x $i = `expr $n \* $i` "
  i=`expr $i + 1`
done
