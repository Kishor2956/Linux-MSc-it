#!/bin/bash
read -p "Enter Directory : " dir

for ext in $(find "$dir" -type f | sed 's/.*\.//' | sort -u)
do
    count=$(find "$dir" -type f -name "*.$ext" | wc -l)
    echo "$ext files = $count"

done
