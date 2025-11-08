#!/bin/bash

#Conditional Statements - Write a script that checks if a file exists and prints a message indicating whether it exists or not. If it exists, the script should also check if the file is readable, writable, or executable. 

if [ -f "Selam/greet.txt" ]
then
    echo "File exists"
    ls -l Selam/*txt
else
    echo "File does not exist"
fi

