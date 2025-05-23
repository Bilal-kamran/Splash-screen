#!/bin/bash

# You can use any of these variables for your desireable effect
bb="\e[1m" # bold
b="\e[34m" # blue
r="\e[31m" # red
g="\e[32m" # green
p="\e[35m" # purple
rr="\e[0m" # reset
s="  "     # spacing

# logic variable
sh=$(ps -p $(ps -p $$ -o ppid=) -o comm= | sed 's/^-//;s/ //g') # shell name

if [ "$sh" = "bash" ]; then
	echo -e "$s$b██████╗  █████╗ ███████╗██╗  ██╗"
	echo -e   "$s██╔══██╗██╔══██╗██╔════╝██║  ██║"
	echo -e   "$s██████╔╝███████║███████╗███████║"
	echo -e   "$s██╔══██╗██╔══██║╚════██║██╔══██║"
	echo -e   "$s██████╔╝██║  ██║███████║██║  ██║"
	echo -e   "$s╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝$rr"
elif [ "$sh" = "zsh" ]; then
	echo -e "$s$b███████╗███████╗██╗  ██╗"
	echo -e   "$s╚══███╔╝██╔════╝██║  ██║"
	echo -e   "$s  ███╔╝ ███████╗███████║"
	echo -e   "$s ███╔╝  ╚════██║██╔══██║"
	echo -e   "$s███████╗███████║██║  ██║"
	echo -e   "$s╚══════╝╚══════╝╚═╝  ╚═╝$rr"
elif [ "$sh" = "fish" ]; then
	echo -e "$s$b███████╗██╗███████╗██╗  ██╗"
	echo -e   "$s██╔════╝██║██╔════╝██║  ██║"
	echo -e   "$s█████╗  ██║███████╗███████║"
	echo -e   "$s██╔══╝  ██║╚════██║██╔══██║"
	echo -e   "$s██║     ██║███████║██║  ██║"
	echo -e   "$s╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝$rr"
else
	echo -e "$s$b███████╗██╗  ██╗███████╗██╗     ██╗"
	echo -e   "$s██╔════╝██║  ██║██╔════╝██║     ██║"
	echo -e   "$s███████╗███████║█████╗  ██║     ██║"
	echo -e   "$s╚════██║██╔══██║██╔══╝  ██║     ██║"
	echo -e   "$s███████║██║  ██║███████╗███████╗███████╗"
	echo -e   "$s╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝$rr"
fi
