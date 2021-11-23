#!/bin/bash

regex='^(https?|ftp|file)://[-A-Za-z0-9\+&@#/%?=~_|!:,.;]*[-A-Za-z0-9\+&@#/%=~_|]\.[-A-Za-z0-9\+&@#/%?=~_|!:,.;]*[-A-Za-z0-9\+&@#/%=~_|]$'

while IFS= read -r line; do
    if echo "$line" |egrep "$regex"
    then
	echo "$line is valid."
    else
	echo "$line is not valid."
    fi
done
