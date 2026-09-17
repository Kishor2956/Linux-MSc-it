#!/bin/bash


if [ $#  -eq 0 ]
then
	dir="."
else
	dir=$1
fi

for file in  "$dir"/*
do
	if [ -f "$file" ]
	then
		file "$file" | grep  -q  "text"
		if [ $?  -eq 0 ]
		then
			echo "$file"
		fi
	fi
done
