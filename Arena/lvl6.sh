#!/bin/bash

#Write a script that accepts a filename as an argument and prints the number of lines in that file. If no filename is provided, display a message saying 'No file provided'.

#lines_file()
#{
 #   local file="$1"
 #   local line_count

 #   line_count=$(cat "$file" | wc -l)

 #   echo "Number of lines in $file is $line_count"

 #   if [ -z "$file" ]
 #   then
 #       echo "No file provided"
  #      exit 1
  #  fi
#}

#lines_file "Arena/log.txt"


LINE_COUNT=$(wc -l < "$1")
echo "The file '$1' has $LINE_COUNT lines."
