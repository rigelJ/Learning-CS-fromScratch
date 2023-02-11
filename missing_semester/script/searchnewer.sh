#!/usr/bin/env bash

echo "list the file by time:"
find . -type f -printf '%T@ %p\n' | sort -n 

echo
echo "The newest file is"
find . -type f -printf '%T@ %p\n' | sort -n | tail -1 | cut -d ' ' -f2
