#!/bin/bash

###one#############
alias dc='cd'

###two############
history | awk '{$1="";print substr($0,2)}' | sort | uniq -c | sort -n | tail -n 10
