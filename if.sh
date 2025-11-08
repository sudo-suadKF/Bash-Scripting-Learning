#!/bin/bash

age=25
grade=95
name="Suad"

if [ $age -gt 18 ]
then
    echo "You are an adult!"
fi


if [ $grade -ge 90 ] && [ $grade -le 100 ]
then
    echo "Excellent!"

fi

if [ "$name" == "Suad" ]
then
    echo "Selam, Suad"
fi