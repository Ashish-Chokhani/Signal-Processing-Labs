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

%-The Maximum Absolute Error between original signal and reconstructed signal

M_A_E=abs(x1t-y);
s=0;
l=length(M_A_E);
for k=1:l
    s=s+M_A_E(k);
end
m=s/l;
disp('The Maximum Absolute Error between original and reconstructed signal is');
disp(m);

%-The Root Mean Square error between original signal and reconstructed signal

RMS=M_A_E.*M_A_E;
s;
l=length(RMS);
for k=1:l
    s=s+RMS(k);
end
r=sqrt(s/l);
disp('The Root Mean Square error between original and reconstructed signal is');
disp(r);