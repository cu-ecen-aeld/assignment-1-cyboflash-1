#!/usr/bin/env bash

writefile=$1
writestr=$2

# check for input
if [[ -z $writefile || -z $writestr ]]; then
    echo "File path or write string or both are not specified"
    exit 1
fi

# create the directores
dirpath=$(dirname $writefile)
mkdir -p $dirpath

# actually write to a file
echo "$writestr" > $writefile
if [[ $? -ne 0 ]]; then
    echo "Unable to write to $writefile"
    exit 1
fi
