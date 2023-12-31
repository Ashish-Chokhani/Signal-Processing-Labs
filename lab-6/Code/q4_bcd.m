%--------------------Defining Paramters----------------------
T = 2 * pi;
t =  (-2*T):0.01:(2*T);
A1 = [1/2,0,1/2];
w0=1;

x1t = partialfouriersum(A1,T,t);

%--------------------Reconstructed plot-----------------------
subplot(2,3,1)
plot(t,x1t);
title('Reconstruced plot');
xlabel('t');
ylabel('x(t)');
grid on;

%-------------Low pass filter output for wc=2------------------
wc = 2;
subplot(2,3,2)
A2 = myLPF(A1,w0,wc);
x2t = partialfouriersum(A2,T,t);
plot(t,x2t);
title('LPF wc=2');
xlabel('t');
ylabel('x(t)');
grid on;

%-------------Low pass filter output for wc=0.5-------------
wc = 0.5;
subplot(2,3,3)
A3 = myLPF(A1,w0,wc);
x3t = partialfouriersum(A3,T,t);
plot(t,x3t);
title('LPF wc=0.5');
xlabel('t');
ylabel('x(t)');
grid on;

% ----------------High pass filter output for wc=2---------------
wc = 2;
subplot(2,3,4)
A4 = myHPF(A1,w0,wc);
x4t = partialfouriersum(A4,T,t);
plot(t,x4t);
title('HPF wc=2');
xlabel('t');
ylabel('x(t)');
grid on;
 
%-----------------High pass filter output for wc=0.5--------------
wc = 0.5;
subplot(2,3,5)
A5 = myHPF(A1,w0,wc);
x5t = partialfouriersum(A5,T,t);
plot(t,x5t);
title('HPF wc=0.5');
xlabel('t');
ylabel('x(t)');
grid on;

%----------------Non Ideal filter output------------------- 
a = 1;
G = 1;
subplot(2,3,6);
A6 = NonIdeal(A1,w0,G,a);
x6t = partialfouriersum(A6,T,t);
plot(t,x6t);
title('Non Ideal');
xlabel('t');
ylabel('x(t)');
grid on;

sgtitle('Filtering of periodic signals with LTI systems');
