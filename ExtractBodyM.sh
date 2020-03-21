#!/bin/bash

# the command tail will remove the header and begin from the second line
# the command cut will separate the data base on the delimiter and only cut columns 2-6
# the command tr will replace all of the delimiter with spaces
# the command sort will organize the output in a reverse and numerical order, will be sorted by body mass
# then it will store the data in a new file

INPUT = $1
DELIM = $2
OUTPUT = $3

tail -n +2 $INPUT | cut -d $DELIM -f 2-6 | tr -s $DELIM " " | sort -r -n -k 6 > $OUTPUT

# 6) how could you make this script run automatically from any prompt without typing bash?
# First cd to the eeb-c177-scripts directory
# open the .profile file
# add the line $PATH="$HOME/Developer/repos/eeb-c177-scripts"
# then save the file
# give the file execute permissions using the command chmod +x ExtractBodyM.sh
