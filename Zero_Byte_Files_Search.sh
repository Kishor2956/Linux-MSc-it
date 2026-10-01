#!/bin/bash

echo "Enter Directory"
read dir

find "$dir"  -type f -size 0
