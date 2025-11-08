#!/bin/bash

#Write a script that monitors a directory for any changes (file creation, modification, or deletion) and logs the changes with a timestamp.

#inotifywait -m -r /path/to/your/directory

#while true; do

#inotifywait -e modify,create,delete -r /home/suadkf/module2_bash_scripting/Arena && \
#<some command to execute when a file event is recorded>

#done



#./script.sh | while IFS= read -r line; do printf '%s %s\n' "$(date)" "$line"; done >>/var/log/logfile


#adddate() {
    #while IFS= read -r line; do
    #    printf '%s %s\n' "$(date)" "$line";
   # done
#

#./thisscript.sh | adddate >>/var/log/logfile
#./thatscript.sh | adddate >>/var/log/logfile
#./theotherscript.sh | adddate >>/var/log/logfile


#tail -f logfile.log


#inotifywait -r -m -e modify /var/log | 
   #while read file_path file_event file_name; do 
    #   echo ${file_path}${file_name} event: ${file_event}
   #done

DIRECTORY="Arena"
LOG_FILE="change_log.txt"

if [ ! -d "$DIRECTORY" ]; then
    echo "Directory does not exist."
    exit 1
fi

fswatch -r "$DIRECTORY" | while read event; do
    if [ -e "$event" ]; then
        echo "$(date +'%Y-%m-%d %H:%M:%S') File modified/created: $event" >> "$LOG_FILE"
    else
        echo "$(date +'%Y-%m-%d %H:%M:%S') File deleted: $event" >> "$LOG_FILE"
    fi
done