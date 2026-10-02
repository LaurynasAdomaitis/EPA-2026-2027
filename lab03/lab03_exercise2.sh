#!/bin/bash

# exercise 2

#loop count to 10
for c in {1..5}; do
	echo "Count: $c"

	# if does not use == it uses -eq
	# note the spaces around if [ ]
	if [ $c -eq 3 ]; then
		echo "found the third item"
	fi
done

#This checks if user entered a paramenter, $1 reps the first value entered after the script name when ran
if [ -z $1 ]; then
	echo "You didn't pass any paraemters to $0"
	exit 1
else
	echo "You passed in $1 to $0"
fi

# counts number of proccesses running
ct=$(ps -ef | wc -l)

# check if process count is greater than number entered and saves result + time to log file
if [ "$ct" -gt "$1" ]; then
	echo "$(date) Maximum number of processes exceeded" >> process_log.txt
else
	echo "$(date) The maximum number of process NOT exceeded" >> process_log.txt
fi
