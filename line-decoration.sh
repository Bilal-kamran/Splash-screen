#!/bin/bash

single_char="="  # Change this to the character you want
terminal_width=$(tput cols)
bold_blue="\e[1;34m"
reset="\e[0m"

line=$(printf "%${terminal_width}s" | sed 's/ /'"$single_char"'/g')
echo -e "$bold_blue$line$reset"
