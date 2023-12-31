%Defining Parameters for calculating FS coefficients
syms t;
T=1;
N=5;
t1=0;
t2=10;
time_grid=-0.5:0.01:0.5;
xt=2*cos(2*pi*t)+cos(6*pi*t);
x1t=2*cos(2*pi*time_grid)+cos(6*pi*time_grid);
%Function call
A=fourierCoeff(t,xt,T,t1,t2,N);
%Function call for partialfouriersum
y=partialfouriersum(A,T,time_grid);
figure();
%----------Original Signal->Blue Reconstructed Signal->Green--------
plot(time_grid,x1t,'b',LineWidth=1.5);
xlabel('t');
ylabel('x(t)');
title('Plot of the original signal and reconstructed signal');
hold on;
plot(time_grid,y,'g',LineWidth=1.5);
grid on;
