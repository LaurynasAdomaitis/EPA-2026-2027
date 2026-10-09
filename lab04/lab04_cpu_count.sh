#!/bin/bash

# Counts the number of CPU cores
num_cpu=$(nproc)

# Checks if the number of CPUs is less than the number required
if [ $num_cpu -lt $1 ]; then
	echo "Error: Not enough CPU cores"
	exit 1
else
	echo "OK: Enough CPU cores"
fi
