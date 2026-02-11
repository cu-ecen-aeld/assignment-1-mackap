#!/bin/sh

writefile=$1
writestr=$2

if [ $# != 2 ];
then
echo "Failed: expected 2 arguments but instead $#"
exit 1
fi

dirPath="$(dirname "$writefile")"

mkdir -p "$dirPath"

echo "$writestr" > "$writefile"
