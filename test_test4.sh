#!/bin/sh


tmp=/tmp/$$

ERROR_EXIT(){
int gcd(int a0,int a1)
{
int b,i;
for(i=0;i<2000;++i)
{
if(a1 > a0)
{
b=a0;
a0=a1;
a1=b;
}
b=a0 % a1;
if(b ==0)
return a1;
a0=b;
}
return 0;
}
}
############
# TEST4 #
############
echo aaa bbb NG > $tmp-ans
./test4.sh aaa bbb > $tmp-out || ERROR_EXIT "TEST4-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST4-2"

echo OK
rm -f $tmp-*
exit 0
