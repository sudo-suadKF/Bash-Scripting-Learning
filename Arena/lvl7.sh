#!/bin/bash

#Write a script that sorts all .txt files in a directory by their size, from smallest to largest, and displays the sorted list.

directory="/home/suadkf/module2_bash_scripting/Arena"

sorted_files=$(ls -S $directory | ls -Slhr *txt | awk '{ print $5, $9 }')

echo "$sorted_files"
