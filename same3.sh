#!/bin/sh

# arguments check
if [ $# -lt 1 ]; then
  echo "kadai3.sh requires 2 string input" 1>&2
  exit 1
fi

if [ $1 = $2 ]; then
  echo "$1 $2 OK"
else
  echo "$1 $2 NG"
fi

