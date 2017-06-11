#!/bin/sh

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

######### 
# TEST1 # 
######### 
echo aaa bbb NG > $tmp-ans 
./same.sh aaa bbb > $tmp-out || ERROR_EXIT "TEST1-1" 
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST1-2"


echo OK 
rm -f $tmp-* 
exit 0

