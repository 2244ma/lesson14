#!/bin/sh

EXIT_FUNC(){
   echo $1>&2
   exit 1
}

tmp=/tmp/$$

echo "12" > $tmp-ans
/kadai3.sh 50 100 > $tmp-out || EXIT_FUNC "exe error"
diff $tmp-ans $tmp-out || EXIT_FUNC "output diff"

echo "error" > $tmp-ans




echo "sucess"
