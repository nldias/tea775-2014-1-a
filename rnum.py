#!/usr/bin/python
from math import floor
deno = 2**31 
denu = 2**31 - 1
xo = 0.9439494030244930249
no = int(xo * deno)
fou = open('rnum.out','wt')
fou.write("%8.6f %8.6f\n" % (float(0),xo) )
n = 100
for i in range(1,n):
   nn = 16807*no % denu
   xn = float(nn)/deno
   fou.write("%8.4f %8.6f\n" % (float(i),xn) )
   no = nn
fou.close()
   
