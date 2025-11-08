#!/bin/bash

#Backup Script - Create a script that copies all .txt files from a specified directory to a backup directory. If the backup directory doesn’t exist, the script should create it first.

if [ -d "module2_bash_scripting/backup" ]
then
    echo "Directory exists"
    cp module2_bash_scripting/*.txt backup/
    echo "Files backed up"
else
    echo "File does not exist"
    mkdir -p backup
    cp *.txt backup/
    echo "Directory created and files backed up"
fi
