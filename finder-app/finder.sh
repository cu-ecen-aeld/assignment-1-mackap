#!/bin/sh

filesdir=$1
searchstr=$2

if [ $# != 2 ];
then
echo "Failed: expected 2 arguments but instead $#"
exit 1
fi

if [ ! -d "$filesdir" ]
 then
echo "${filesdir} is not directory"
exit 1
fi

files=$(find ${filesdir} -type f | wc -l)
lines=$(grep -r ${searchstr} ${filesdir} | wc -l)

echo "The number of files are $files and the number of matching lines are $lines"

