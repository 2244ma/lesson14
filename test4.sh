#!/bin/sh


int gcd(int a1,int a2)
{
int ans=1;
for(int i=2;i<=a1;i++)
if(a1 % i == 0 && a2 % i == 0)ans = i;
return ans;
}
