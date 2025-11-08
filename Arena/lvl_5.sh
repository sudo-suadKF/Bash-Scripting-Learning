#!/bin/bash

#1. Creates a directory names 'Battlefield'

#mkdir Battlefield

#2. Inside Battlefield, create files named knight.txt, sorcerer.txt, and rogue.txt.

#cd Battlefield
#touch knight.txt sorcerer.txt rogue.txt

#3. Check if knight.txt exists; if it does, move it to a new directory called Archive.

#if [ -f "Battlefield/knight.txt" ]
#then
#    mkdir -p Archive
#    mv Battlefield/knight.txt Archive/    
#fi

#4. List the contents of both Battlefield and Archive.

echo "Contents of Battlefield:"
ls Battlefield

echo "Contents of Archive:"
ls Archive