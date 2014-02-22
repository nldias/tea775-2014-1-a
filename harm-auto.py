#!/usr/bin/python
from numpy import zeros, average
n = 10000
m = 1000
x = zeros(n,float)
fin = open('harm2.out','rt')
i = 0
for lin in fin:
   campo = lin.split()
   x[i] = float(campo[1])
   print x[i]
   i += 1
print i
fin.close()
xm = x.mean()
xv = x.var()
print xm
print xv
# --------------------------------------
# the autocovariance function
# --------------------------------------
fou = open('harm-auto.out','wt')
r = zeros(m)
for k in range(m):
    print k
    s = 0.0
    for i in range(n - k):
       s += (x[i] - xm)*(x[i+k]-xm)
    s /= (xv * float(n-k))
    r[k] = s
for k in range(m):
    fou.write("%12.8f %12.8f\n" % (k,r[k]))
fou.close()


