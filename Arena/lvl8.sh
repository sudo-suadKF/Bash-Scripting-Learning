#!/bin/bash

 #Create a script that searches for a specific word or phrase across all .log files in a directory and outputs the names of the files that contain the word or phrase.

 search_logs()
{
   local search_term="$1"
   grep -l "$search_term" *.log
}

search_logs "ERROR"

DIRECTORY="module2_bash_scripting"
SEARCH_TERM="ERROR"

if [ ! -d "$DIRECTORY" ]; then
    echo "Directory does not exist."
    exit 1
fi

grep -l "$SEARCH_TERM" "$DIRECTORY"/*.log