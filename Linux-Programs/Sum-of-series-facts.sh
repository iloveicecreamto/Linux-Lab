#!/bin/bash
# 13. Sum of series 1/1! + 2/2! + 3/3! + ...

function fact() {
    local n=$1
    if [[ $n -eq 0 ]]; then
        echo 1
    else
        echo $((n * $(fact $((n-1)))))
    fi
}

echo "Program to find the sum of series"
echo "Enter the upper limit"
read n

sum=0

for ((i=1; i<=n; i++))
do
    f=$(fact $i)
    echo -n "$i/$f  "
    sum=$(echo "scale=4; $sum + $i / $f" | bc)
done

echo
echo "Sum of $n series is $sum"
