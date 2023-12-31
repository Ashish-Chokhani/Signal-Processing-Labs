%--------------------Defining Paramters----------------------
T = 2 * pi;
t =  (-2*T):0.01:(2*T);
j=1j;
A1 = [1/2,(-1/2)*j,0,0,0,(1/2)*j,1/2];  %On manual calculation
w0=1;
wc=2.5;

x1t = partialfouriersum(A1,T,t);

%--------------------Reconstructed plot-----------------------
subplot(2,2,1)
plot(t,x1t);
title('Reconstruced plot');
xlabel('t');
ylabel('x(t)');
grid on;

%-------------Low pass filter output for wc=2.5------------------
subplot(2,2,2)
A2 = myLPF(A1,w0,wc);
x2t = partialfouriersum(A2,T,t);
plot(t,x2t);
title('LPF wc=2.5');
xlabel('t');
ylabel('x(t)');
grid on;

% ----------------High pass filter output for wc=2.5---------------
subplot(2,2,3)
A3 = myHPF(A1,w0,wc);
x3t = partialfouriersum(A3,T,t);
plot(t,x3t);
title('HPF wc=2.5');
xlabel('t');
ylabel('x(t)');
grid on;
 
%----------------Non Ideal filter output------------------- 
a = 1;
G = 1;
subplot(2,3,6);
A4 = NonIdeal(A1,w0,G,a);
x4t = partialfouriersum(A4,T,t);
plot(t,x4t);
title('Non Ideal');
xlabel('t');
ylabel('x(t)');
grid on;

