#!/bin/bash

# Author: Carolina Daniel
# Date Created: 08/03/2023
# Last Modified: 09/03/2023

# Description
# : With this script we just want to present the user with a menu where they can
# choose which of the two scripts they want to run and then have this script run 
# the relevant script based on the user’s selection.

# Usage
# ./toolkit.sh

PS3="What script would you like to run?: "
select script in "cruft_remover" "folder_organiser"; do
	${HOME}/UdemyBashMastery/scripts/"${script}.sh"
	break
done