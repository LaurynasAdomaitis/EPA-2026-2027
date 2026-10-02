#!/bin/bash

# exercise 1

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

# check if process count is greater than number entered
if [ "$ct" -gt "$1" ]; then
	echo "Maximum number of processes exceeded"
else
	echo "The maximum number of process NOT exceeded"
fi
