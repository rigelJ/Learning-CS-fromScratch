#!/bin/bash

#####one#################
pkill -af sleep

#####two################
sleep 60 &
pgrep sleep | wait; ls

#####three#############
pidwait()
{
	while kill -0 $1
	do
		sleep 1
	done
	ls
}

