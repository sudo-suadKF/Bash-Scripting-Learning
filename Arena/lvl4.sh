#!/bin/bash

# Create a script that copies all .txt files from the Arena directory to a new directory called Backup.

#directory="/home/suadkf/module2_bash_scripting/Arena"

# Ändrar alla filer som slutar med txt med .bak
#for file in *.txt; do
#	cp "$file" "$directory"
#done

mkdir -p Backup
cp Arena/*.txt Backup/
