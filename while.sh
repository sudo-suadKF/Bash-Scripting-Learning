#!/bin/bash

count=1
frukt=("fikon" "dadel" "banan")
index=0

while [ $count -le 5 ]
do
    echo "Count: $count"
    ((count++))
done


while [ $index -lt ${#frukt[@]} ]
do
    echo "Fruit: ${frukt[$index]}"
    ((index++))
done