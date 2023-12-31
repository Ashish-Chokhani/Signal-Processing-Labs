%-------------q.4.a--------------

r=0.95;
x=pi/3;

a=[1 -2*cos(x) 1];
b=[1 -2*r*cos(x) r*r];

zplane(b, a);
title('q.4.a');