#!/bin/sh

echo 'kadai2/17745118'
if [ $# -ne  2 ]
then
  echo "errpr" 1>&2
  exit 1
fi

a=$1
b=$2

while [ $b -ne  0 ]
do
 
   tmp=$a
   a=$b
   b=$tmp
  
  b=`expr $b % $a`
done
