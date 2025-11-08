#!/bin/bash






set -o pipefail

cat nonsensefile | grep "something"

#set -o errexit, samma som set -e

#set -o nounset, samma som set -u

#set -eux

#echo "test"

#echo "value av x is $x"

#nonsensecommand
 
#set -x

#echo "starting script"
#x=10
#y=20
#z=$((x + y))
#echo "value of z is $z"


#set -u

#x=10
#y=20
#z=$((x + y + w))

#echo "z equals $z"

#set -e

#echo "Before skript"

#nonexistcommand

#echo "After skript"

#num1=10
#num2=0

#if [ $num2 -eq 0 ]
#then
 #   echo "Error: Division by zero is not allowed"
  #  exit 1
#fi

#result=$((num1 / num2))

#echo "The result is: $result"

#FILE="/nonexistent"

#if [[ -f "$FILE" ]]
#then
#    echo "File exists"
#else 
#    echo "File does not exist"
#fi

#command -v git 2>/dev/null

#if [[ $? -ne 0 ]]
#then
 #   echo "git is not installed. Please install git"
 #   exit 1
#else 
#    echo "git is installed"
#fi

