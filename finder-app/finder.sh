#!/bin/sh
# Finder script for assignment 1 and assignment 2
# Author: Facundo Zingarelli

if [ ! $# -eq 2 ]; then
	echo "You must input two arguments:- File directory. - String to be looked."
	return 1
fi


if [ ! -d $filesdir ] 
then
	echo "File directory must be a valid one."
	return 1
fi

filesdir=$1
searchstr=$2

NUM_FILES=$(find "$filesdir" -type f | wc -l)
NUM_HITS=$(grep -R "$searchstr" "$filesdir" | wc -l)
echo "The number of files are $NUM_FILES and the number of matching lines are $NUM_HITS"


