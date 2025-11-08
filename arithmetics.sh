#!/bin/bash

num1=$1
num2=$2
length=$3
width=$4

area=$((length * width))
perimeter=$((2 * (length + width)))

result=$((num1 + num2))

echo "The sum of $num1 and $num2 is: $result" 
echo "Rectangle area is: $area
echo "Rectange perimeter is: $perimeter
