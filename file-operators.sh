#!/bin/bash

#Reading files:
read_file()
{
    local file_path="$1"

    while IFS= read -r line
    do 
        echo "$line"
    done < "$file_path"
}

read_file "./log.txt"

process_file()
{
    local file_path="$1"

    cat "$file_path" | while IFS= read -r line; do
        echo "Processing line: $line"
    done
}

process_file "./log.txt"

#Writing and create files with redirection:

write_to_file()
{
    local file_path="$1"
    local data="$2"

    echo "$data" >> "$file_path"
}

write_to_file "read.txt" "We alejkumu selam"

#Kolla checksums:

calculate_md5sum()
{
    local file_path="$1"
    md5sum "$file_path"

}

calculate_md5sum "read.txt"

calculate_sha256sum()
{
    local file_path="$1"
    sha256sum "$file_path"
}

calculate_sha256sum "read.txt"

#Jämföra checksums:

compare_checksums()
{
    local checksum1="$1"
    local checksum2="$2"

    if [[ "$checksum1" == "$checksum2" ]]
    then
        echo "Checksums match and files intact"
    else
        echo "Checksums don't match and file integrity compromised"
    fi
}

compare_checksums "123" "123"