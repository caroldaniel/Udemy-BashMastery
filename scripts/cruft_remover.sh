#!/bin/bash

# Author: Carolina Daniel
# Date Created: 08/03/2023
# Last Modified: 09/03/2023

# Description
# In this script we want to ask the user which folder they want to remove 
# “cruft” from, and to define how many days files should be unmodified for to be 
# considered "cruft”.

# Usage
# ./cruft_remover.sh

read -p "Full path of the folder to remove \"cruft\" from: " path
read -p "Number of days \"cruft\" files should be unmodified for: " days

readarray files < <(find "${path}" -maxdepth 1 -type f -mtime "+$days")

for file in ${files[@]}; do
	rm -i "${file}"
done