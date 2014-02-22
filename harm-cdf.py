#!/usr/bin/python
from numpy import zeros
from math import atan2
n = 10000
omeg = zeros(n,float)
fin = open('harm2.out','rt')
i = 0
for lin in fin:
   campo = lin.split()
   xi = float(campo[1])
   yi = float(campo[2])
   omeg[i] = atan2(yi,xi)
   print omeg[i]
   i += 1
print i
fin.close()
# --------------------------------------
# the CDF
# --------------------------------------
fou = open('harm-cdf.out','wt')
omeg.sort()
for i in range(n):
   omegi = omeg[i]
   Fi = float(i+1)/(n+1)
   fou.write(' %12.8f %12.8f\n' % (omegi,Fi)) 
fou.close()
