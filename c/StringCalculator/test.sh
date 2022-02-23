#!/bin/bash

cd "$1"

results=$(ctest --build-and-test ./ ./debug/ --build-generator "Unix Makefiles" --test-command ctest | awk '/tests passed,/{print "TDD fail: " $4 "/" $9}')
project=$(basename $(pwd))

echo "$project: $results" > ~/tdd.txt
