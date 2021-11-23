#!/bin/sh

echo "Read from stdin. Press Enter then Ctrl+D to end input..."
var=`cat -`

echo "Write to stdout..."
echo "$var"

echo "Grepping in /etc/passwd..."
cat /etc/passwd|grep "$var"

ret=$?

if [ $ret -eq 0 ];
then
    echo "Found!"
else
    echo "Not found!"
fi

exit $ret