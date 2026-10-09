#!/bin/bash

# Function to display how the script should be used
usage() {
	printf "Usage: lab04_cpu_count_3.sh [MAX_NUM_CORES]\n""
}

# Check if the user forgot to enter $1
if [ -z "$1" ]; then
	usage
	read -p "Enter the required number of CPU cores: " required_cpu
else
	required_cpu=$1
fi

# Counts the number of CPU cores
num_cpu=$(nproc)

# Checks if the number of CPUs is less than the number required
if [ $num_cpu -lt $required_cpu ]; then
	printf "Error: Not enough CPU cores\n"
else
	printf "OK: Enough CPU cores\n"
fi

printf "\nThe read command allows the user to enter a value if no argument was supplied.\n"
printf "This improves the script because it can still continue instead of stopping when the user forgets $1.\n"


printf "The printf command provides formatted output and was used instead of echo.\n"
printf "This improves the script because the messages are clearer and easier for the user to read.\n"
