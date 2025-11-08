#!/bin/bash
#Basic Arithmetic - Write a script that takes two numbers as input from the user and performs basic arithmetic operations (addition, subtraction, multiplication, and division) and then displays all the answers of those operations in the terminal. 

arithemtic()
{
    echo "Enter first number: "
    read first_nr

    echo "Enter second number: "
    read second_nr

    add=$((first_nr + second_nr))
    sub=$((first_nr - second_nr))
    mult=$((first_nr * second_nr))
    div=$((first_nr / second_nr))

    echo "$first_nr + $second_nr = $add"
    echo "$first_nr - $second_nr = $sub"
    echo "$first_nr * $second_nr = $mult"
    echo "$first_nr / $second_nr = $div"
}

arithemtic

