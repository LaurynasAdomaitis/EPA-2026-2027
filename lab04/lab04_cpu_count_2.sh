#!/bin/bash

# Function to display how the script should be used
usage() {
	echo "Usage: lab04_cpu_count_2.sh [MAX_NUM_CORES]"
}

# Check if the user forgot to enter $1
if [ -z "$1" ]; then
	usage
	exit 1
fi

# Counts the number of CPU cores
num_cpu=$(nproc)

# Checks if the number of CPUs is less than the number required
if [ $num_cpu -lt $1 ]; then
	echo "Error: Not enough CPU cores"
	exit 1
else
	echo "OK: Enough CPU cores"
fi
