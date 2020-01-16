#!/bin/sh
#set -x
function syntax {
	echo "Syntax: deploy.sh <directory>"
	echo " deploy the bill of materials to the specified directory"
	return 0
}

if [ $# -ne 1 ]; then
	echo "Need to provide a directory to deploy to. No parameter given."
	syntax
	exit 16
fi
if [ ! -d $1 ]; then 
	echo "Need to specify a directory to deploy to. $1 is not a directory."
	syntax
	exit 16
fi

names='README.md LICENSE'
code="${names}"
 
for c in ${code}; do
	cp -p ${c} $1/${c}
done

exit $? 
