
#!/bin/sh
# Finder script for assignment 1 and assignment 2
# Author: Facundo Zingarelli

# Number of input arguments chek:
if [ ! $# -eq 2 ]; then
	echo "You must input two arguments:- File directory. - String to be written."
	exit 1
fi

# Valid path check:
if [ ! -d $filesdir ] 
then
	echo "File directory must be a valid one."
	exit 1
fi

# Striping the directory and file names:
fullpath=$1
writestr=$2
dir=$(dirname $fullpath)
file=$(basename $fullpath)

# Creating directory path if it doesn't already exists.
if [ ! -d "$dir" ]; then
	mkdir -p $dir
	if [ $? != 0 ]; then
		echo "Couldn't create path '$dir'"
		exit 1
	fi
fi

# Writing to the file:
echo "$writestr" > $dir/$file
if [ $? != 0 ]; then
	echo "Couldn't write to file '$writestr'"
	exit 1
fi

