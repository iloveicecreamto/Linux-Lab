#!/bin/bash

# 2. Find area, perimeter of rectangle,
# area and circumference of circle

echo "The area, perimeter and circumference calculators"
echo "--------------------------------------------------"
echo "RECTANGLE"
echo "--------------------------------------------------"

echo "Enter the length of rectangle:"
read length

echo "Enter the breadth of rectangle:"
read width

area=$(echo "$length * $width" | bc)

perim=$(echo "2 * ($length + $width)" | bc)

echo "Area: $area"
echo "Perimeter: $perim"

echo "--------------------------------------------------"
echo "CIRCLE"
echo "--------------------------------------------------"

echo "Enter the radius:"
read rad

cir=$(echo "scale=2; 2 * 3.1415 * $rad" | bc)

area_circle=$(echo "scale=2; 3.1415 * $rad * $rad" | bc)

echo "Area: $area_circle"
echo "Circumference: $cir"

echo "--------------------------------------------------"
