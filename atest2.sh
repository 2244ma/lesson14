#!/bin/sh

if [ "$1" -gt "$2" ]; then 
   expr $1 - $2 | cat 
   exit 0 
else 
   echo error 1>&2 
   exit 1 
fi
