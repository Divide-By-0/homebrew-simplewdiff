#!/bin/bash

# Check if two arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 file1.md file2.mdx"
    exit 1
fi

file1=$1
file2=$2

wdiff -n --start-delete="[-" --end-delete="-]" --start-insert="{+" --end-insert="+}" $file1 $file2 | grep -E "{\+|\[-" | colordiff  