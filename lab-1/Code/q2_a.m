%Defining Parameters for calculating FS coefficients
syms t;
N=5;
T=1;
t1=0;
t2=10;
xt=2*cos(2*pi*t)+cos(6*pi*t);
%Function call
A=fourierCoeff(t,xt,T,t1,t2,N);
time_grid=-0.5:0.01:0.5;
%Function call
y=partialfouriersum(A,T,time_grid);
figure;
plot(time_grid,y,'b',LineWidth=1.5);
xlabel('t');
ylabel('x(t)');
title('Reconstructed cos wave');
grid on;
