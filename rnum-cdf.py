#!/usr/bin/python
from numpy import zeros
n = 10000
x = zeros(n,float)
fin = open('rnum2.out','rt')
i = 0
for lin in fin:
   campo = lin.split()
   x[i] = float(campo[1])
   print x[i]
   i += 1
print i
fin.close()
# --------------------------------------
# the CDF
# --------------------------------------
fou = open('rnum-cdf.out','wt')
x.sort()
for i in range(n):
   xi = x[i]
   Fi = float(i+1)/(n+1)
   fou.write(' %12.8f %12.8f\n' % (xi,Fi)) 
fou.close()
