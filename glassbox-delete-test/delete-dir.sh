#!/bin/bash
if [ -z "$1" ]; then
    2>&1 echo "need directory argument"
    exit 1
else
    DIR="$1"
fi
find $DIR -type b,c,p,f,l,s -exec rm -fv {} \;
