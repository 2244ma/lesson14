#!/bin/sh

echo 'kadai2/17745118'


a=48
b=24

while [ $b -eq 0 ]
do
 if [ $a -gt $b ]
 then
   c=$a; a=$b; b=$c
  fi
  b==`expr $b % $b`
done
