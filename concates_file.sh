#!/bin/bash

#e.g. ***filename : xyz***

echo "Enter Output  File Name :"
read output


for  file in "$@"
do
	echo "*** filename : $file ***" >> "$output"
	cat "$file" >> "$output"
done

echo "All File Concatenated Successfully. "
