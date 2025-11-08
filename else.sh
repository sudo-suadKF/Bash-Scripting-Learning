#!/bin/bash

age=15
score=85

if [ $age -gt 18 ]
then
    echo "Adult"
else
    echo "No adult"
fi

if [ $score -ge 90 ]
then 
    echo "Excelent"
elif [ $score -ge 80 ]
then
    echo "Good"
else 
    echo "Better luck next time"
fi
