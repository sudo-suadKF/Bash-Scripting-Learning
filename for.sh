#!/bin/bash

fruits=("fig" "date" "banana")

for (( i=1; i<=5; i++ ))
do
    echo "Number: $i"
done

for fruit in "${fruits[@]}"
do
    echo "Fruits: $fruit"
done

for number in $(seq 1 5)
do
    echo "Number: $number"
done