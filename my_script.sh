#!/bin/bash

name="Suad"

# Printar ut Suads mål med Hijrah

echo "Hijrah to Bosnia for $name"

:'
Om namnet är Suad så printas ut hälsning till Suad
'
if [ $name == "Suad" ] 
then 
	echo "Hi Suad!" 
fi


for i in 1 2 3; do echo "Number $i" 
done

num=1

while (( $num<10 ))
do
	echo $num
	((++num))
done


greet() {
  echo "Hello, $1"
}

greet "Suad"


read -p "Enter your name: " name; echo "Hello, $name"
