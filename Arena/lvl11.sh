#!/bin/bash


directory="Arena"
threshold=0

usage=$(du -sm $directory | awk '{print $1}')

if [ "$usage" -gt "$threshold" ]
then 
    echo "Warning!"
else 
    echo "All good!"
fi




