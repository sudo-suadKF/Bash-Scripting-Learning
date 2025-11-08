#!/bin/bash

age=19
grade=75

if [ $age -gt 18 ]
then
    echo "Eligible based on age"
    if [ $grade -ge 80 ]
    then
        echo "Eligible based on grade"
        echo " Congrats"
    else
        echo "Not eligible, the grades are not high enough"
    fi 
else
    echo "Not eligible"
fi 