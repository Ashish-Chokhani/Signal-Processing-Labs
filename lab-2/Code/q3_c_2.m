%----------freqz()----------------
%-------r=0.95 x=pi/2------------- 
x=pi/2;
y=2*cos(x);
r=0.95;

a=[1 -y*r r*r];
b=[1 -y 1];

freqz(b,a,1001);
xlim([0,2*pi]);
title('7.3.c n=1001 r=0.95 x=pi/2');