#!/bin/bash

echo "Enter the Number : " 
read n

if [ $n -gt 0 ]; then 
echo "$n is Positive"

elif [ $n -lt 0 ]; then
echo "$n is Negative"

else
echo "$n is Zero"
fi

if [ $(( n % 2)) -eq 0 ]; then
echo "$n is Even"

else
echo  "$n is Odd"
fi
