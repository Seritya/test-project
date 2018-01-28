#!/usr/bin/env bash
# File: guessinggame.sh

# Sets number of files as var1
var1=$(ls -1 | wc -l)

# Functions
function low {
	echo "The number you guessed is too low! Guess again!"
	read var2
}

function high {
	echo "The number you guessed is too high! Guess again!"
	read var2
}

function ok {
	echo "Congratulations, you guessed right!"
}

# Start prompt
echo "Try to guess how many files this folder contains! Type in a number:"
read var2

# Scenario
while [[ $var1 -ne $var2 ]]
do
	if [[ $var2 -lt $var1 ]]
	then low
	elif [[ $var2 -gt $var1 ]]
	then high
	fi
done
ok
