w=20000;
k=cos(w);
k2=(2*k*k)-1;
b=[k -2*k*k k];
a=[1 -2*k2 1];

zplane(b, a);
title('q.3.c');