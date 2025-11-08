#!/bin/bash

#File Operations - Write a script that creates a directory, navigates into it, creates a file inside it, writes some text to the file, and then displays the contents of the file. 

directory="$1"
file="$2"

mkdir $directory
cd $directory

touch $2
echo "Assalam alejkum" >> $file
cat $file