#!/bin/sh

tmp=/tmp/$$

ERROR_EXIT(){
  echo "$1" >$2
  rm -f $tmp-*
  exit1
}
##############
# TEST3 #
##############
echo aaa bbb "0" > $tmp-ans
./test3.sh aaa bbb > $tmp-out || ERROR_EXIT "TEST3-3"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST3-2"

echo OK
rm -f $tmp-*
exit 0
