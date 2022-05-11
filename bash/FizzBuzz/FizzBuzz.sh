#!/usr/bin/env bash

fb() {
	if [[ $(($1 % 3)) == 0 ]] || [[ $(($1 % 5)) == 0 ]]; then
		if [[ $(($1 % 3)) == 0 ]]; then
			printf "fizz"
		fi
		if [[ $(($1 % 5)) == 0 ]]; then
			printf "buzz"
		fi
	else
		echo "$1"
	fi
}

fb "$1"
