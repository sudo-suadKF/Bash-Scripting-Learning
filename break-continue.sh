#!/bin/bash

count=1

for (( i=1; i<=5; i++ ))
do
    if [ $i -eq 3 ]
    then 
        continue
    fi

    echo "Number: $i"

done

#while true
#do
 #   echo "Count: $count"
  #  ((count++))
   # if [ $count -eq 4 ]
    #then
     #   break
    #fi
#done

while [ $count -le 5 ]
do 
    if [ $count -eq 3 ]
    then
        ((count++))
        continue
    fi

    echo "Count: $count"
    ((count++))

done