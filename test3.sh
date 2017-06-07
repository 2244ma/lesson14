#!/bin/sh

if [ $# -lt 1 ];then
   echo "error" 1>&2
   exit 1
else
   echo $1
   exit 0
fi
