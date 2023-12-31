n=0:50;
w=0:0.01:2*pi;
N0 = 1;
L=16;
fs=64;
f0=11;
wn= (0<=n) & (n<=L-1);
pn=cos((2*pi*f0*n)/fs);
xn= pn .* wn;

Y1=fft(xn,16);
Y2=fft(xn,32);
Y3=fft(xn,64);
Y4=fft(xn,128);

n1=0:15;
n2=0:31;
n3=0:63;
n4=0:127;

figure;

%-------------------------N=16---------------------------------
subplot(2,2,1);
stem(n1,abs(Y1));
title("N=16");
xlabel("N");
ylabel("X[k]");
grid on;

%-------------------------N=32---------------------------------
subplot(2,2,2);
stem(n2,abs(Y2));
title("N=32");
xlabel("N");
ylabel("X[k]");
grid on;

%-------------------------N=64---------------------------------
subplot(2,2,3);
plot(n3,abs(Y3));
title("N=64");
xlabel("N");
ylabel("X[k]");
grid on;

%-------------------------N=128---------------------------------
subplot(2,2,4);
plot(n4,abs(Y4));
title("N=128");
xlabel("N");
ylabel("X[k]");
grid on;
sgtitle("FFT");