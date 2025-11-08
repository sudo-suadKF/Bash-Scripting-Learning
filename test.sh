#!/bin/zsh

name1= "Suad"
name2="Ajlin"

parameter1=$1
parameter2=$2
parameter3=$3

radius=$4
diameter=$5
pi=3.14

circle_area=$((radius * radius * pi))
circle_circum=$((diameter * pi))

num=$6

count=$7
countries=("Bosnia" "Saudi Arabia" "Sweden")
index=0

echo "$name1 loves his wife $name2"
echo "Let's make $parameter1 $parameter2 $parameter3"
echo "Circle's area is: $circle_area"
echo "CIrcle's circumference is: $circle_circum"

if [ $num -ge 18 ] && [ $num -le 25 ]
then
    echo "You are still young and have the whole life in front of you"
elif [ $num -gt 25 ]
then
    echo "You are now over 25, really think what you are doing!"
elif [ $num -gt 30 ]
then    
    echo "Oh oh the age is going fast now!"
elif [ $num -gt 40 ]
then
    echo "You are old!"
elif [ $num -lt 18 ]
then
    echo "You are a baby!"
fi

while [ $count -le 15 ]
do
    echo $count
    ((count++))
done

while [ $index -lt ${#countries[@]} ]
do
    echo "${countries[$index]}"
    ((index++))
done
