#!/usr/bin/python
from math import floor
from random import random
from numpy import array,floor
xo = array([0.9439494030244930249,0.54334031401990379436,0.323277981420277652,0.3412007169188])
n = 100
fou = open('omeg-2x.out','wt')
fou.write("%8.4f %8.6f %8.6f %8.6f %8.6f\n" % (float(0),xo[0],xo[1],xo[2],xo[3]) )
for i in range(1,n):
   aux = 2*xo
   xn = aux - floor(aux) 
   fou.write("%8.4f %8.6f %8.6f %8.6f %8.6f\n" % (float(i),xn[0],xn[1],xn[2],xn[3]) )
   xo = xn
fou.close()
   
