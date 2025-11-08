#!/bin/bash

directory="/home/suadkf/module2_bash_scripting/Arena"

if [[ "$(find $directory -name "hero.txt")" -eq true ]]
then
    echo "Hero found"
else
    echo "Hero not found"
fi

if [ -f "Arena/hero.txt" ]; then
    echo "Hero found!"
else
    echo "Hero missing!"
fi
