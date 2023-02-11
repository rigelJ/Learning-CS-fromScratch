#!/usr/bin/env bash

n=$((RANDOM % 100))

if [[ n -eq 42 ]]; then
   echo "something went wrong"
   >&2 echo "the error was using magic numbers"
   exit 1
fi

echo "everything went according to plan"
