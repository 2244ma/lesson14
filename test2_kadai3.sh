#!/bin/sh

EXIT_FUNC(){
   echo $1>&2
   exit 1
}

tmp=/tmp/$$

echo "50" > $tmp-ans
./kadai3.sh 50 100 > $tmp-out || EXIT_FUNC "exe error"
diff $tmp-ans $tmp-out || EXIT_FUNC "output diff"

echo "error" > $tmp-ans

echo "TEST1 sucess"


echo "Don't input 0" > $tmp-ans
./kadai3.sh 0 10 > $tmp-err || ERROR_EXIT "exe error"
diff $tmp-ans $tmp-err || ERROR_EXIT "0 correct?"

echo "TEST2 sucess"


echo " 2" > $tmp-ans
./kadai3.sh 2 10 > $tmp-err || ERROR_EXIT "正解です"
diff $tmp-ans $tmp-err || ERROR_EXIT "error"

echo "TEST3 sucess"


echo "takano" > $tmp-ans
./kadai3.sh 1 1 2 3 > $tmp-err || ERROR_EXIT "exe error"
diff $tmp-ans $tmp-err || ERROR_EXIT "成功しました"

echo "TEST4 sucess"
