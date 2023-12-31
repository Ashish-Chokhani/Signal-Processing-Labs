%Defining Parameters for calculating FS coefficients
syms t;
T=1;
T1=0.1;
t1=0;
t2=10;
N=100;
time_grid=-0.5:0.01:0.5;
xt= piecewise((-T1<=t) & (t<=T1),1,0);
A=fourierCoeff(t,xt,T,t1,t2,N);
y=partialfouriersum(A,T,t);
figure;
fplot(y,[-2,2]); %Reconstructed signal
xlabel('t');
ylabel('x(t)');
title('Effect on reconstructed signal on increasing no. of FS Coefficients');
grid on;