#!/bin/bash

# Ändrar alla filer som slutar med txt med .bak
for file in *.txt; do
	mv "$file" "${file%.txt}.bak"
done
