#!/bin/bash

selam() 
{
    echo "Assalam alejkum"
}


greet_person()
{
    local name="$1"
    echo "Selam alejkum, $name"
}

greet_person "Suad"

print_args()
{
    echo "Number of arguments: $#"
    echo "Script name: $0"
    echo "First argument: $1"
    echo "Second argument: $2"
    echo "All arguments: $@"
}

print_args "Suad" "Ajlin" "Jusuf"


greet_user()
{
    echo "What is your name?"
    read name
    echo "Selam $name"
}

greet()
{
    local name
    if [ $# -eq 0 ]
    then
        echo "What is your name?"
        read name
    else 
        name="$1"
    fi

    echo "Selam, $name"
}


validate_age()
{
    local age=$1

    if [[ ! $age =~ ^[0-9]+$ ]]
    then
        echo "Invalid age. Please provide a numeric value."
        return 1
    fi

    if (( age < 18))
    then 
        echo "Sorry, you must be at least 18 years old."
        return 1
    fi

    echo "Congratulations! You are eligible."
    return 0
}

echo "Enter your age: "
read user_age

validate_age "$user_age"
exit_code=$?

if(( exit_code != 0 ))
then 
    echo "Input validation failed!"
fi

sanitize_string()
{
    local input=$1
    local sanitized_input=${input//[^a-zA-Z0-9]/}

    echo "$sanitized_input"
}

echo "Please enter a username:"
read input_username

sanitized_username=$(sanitize_string "$input_username")

echo "Sanitized username: $sanitized_username"


get_file_count()
{
    local directory="$1"
    local file_count

    file_count=$(ls "$directory" | wc -l)

    echo "Number of files in $directory: $file_count"

}



search_logs()
{
   local search_term="$1"
   grep "$search_term" log.txt | awk '{ print $2 }'
}

search_logs "ERROR"