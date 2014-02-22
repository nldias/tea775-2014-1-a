#!/usr/bin/python
from math import sin, cos, pi
theta0 = -pi + 0.9439494030244930249*2*pi
a = cos(theta0)
b = sin(theta0)
fou = open('harm2.out','wt')
fou.write("%8.6f %8.6f %8.6f\n" % (float(0),a,b) )
n = 10000
for i in range(1,n):
   t = 2*pi*float(i)/100.0
   xn = a*cos(t) + b*sin(t)
   yn = -a*sin(t) + b*cos(t)
   fou.write("%8.4f %8.6f %8.6f \n" % (float(i),xn,yn) )
fou.close()
   
