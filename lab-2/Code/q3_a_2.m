%----------r=0.1 x=pi/2----------

x=pi/2;
y=2*cos(x);
r=0.1;

a=[1 -y*r r*r];
b=[1 -y 1];

zplane(b, a);
title('7.3.a r=0.1 x=pi/2');