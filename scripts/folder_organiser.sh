#!/bin/bash

# Author: Carolina Daniel
# Date Created: 08/03/2023
# Last Modified: 09/03/2023

# Description
# In this script you are going to use the output of an ls command to generate
# the list of files in a folder that you are going to organise.

# Usage
# ./folder_organiser.sh

read -p "Path of the folder to organize: " path

while read filename; do
	case "${filename}" in 
		*.jpg|*.jpeg|*.png) 
			subfolder="images" ;;
		*.doc|*.docx|*.txt|*.pdf) 
			subfolder="documents" ;;
		*.xls|*.xlsx|*.csv) 
			subfolder="spreadsheets" ;;
		*.sh) 
			subfolder="scripts" ;;
		*.zip|*.tar|*.tar.gz|*.tar.gz.bz2) 
			subfolder="archives" ;;
		*.ppt|*.pptx) 
			subfolder="presentations" ;;
		*.mp3) 
			subfolder="audio" ;;
		*.mp4) 
			subfolder="video" ;;
		*) 
			subfolder="." ;;
	esac

	if [ ! -d "${folder}/${subfolder}" ]; then
		mkdir "${folder}/${subfolder}"
	fi

	mv "${filename}" "${folder}/${subfolder}"
done < <(ls "${path}")
