n=0:50;
w=0:0.01:2*pi;
N0 = 1;
L1=16;
L2=32;
L3=64;
L4=128;
fs=64;
f0=10;
wn1= (0<=n) & (n<=L1-1);
wn2= (0<=n) & (n<=L2-1);
wn3= (0<=n) & (n<=L3-1);
wn4= (0<=n) & (n<=L4-1);
pn=cos((2*pi*f0*n)/fs);

xn1= pn .* wn1;
xn2= pn .* wn2;
xn3= pn .* wn3;
xn4= pn .* wn4;

Y1=fft(xn1,128);
Y2=fft(xn2,256);
Y3=fft(xn3,512);
Y4=fft(xn4,1024);

n1=0:127;
n2=0:255;
n3=0:511;
n4=0:1023;

figure;

%-------------------------N=128---------------------------------
subplot(2,2,1);
stem(n1,abs(Y1));
title("N=128");
xlabel("N");
ylabel("X[k]");
grid on;

%-------------------------N=256---------------------------------
subplot(2,2,2);
stem(n2,abs(Y2));
title("N=256");
xlabel("N");
ylabel("X[k]");
grid on;

%-------------------------N=512---------------------------------
subplot(2,2,3);
plot(n3,abs(Y3));
title("N=512");
xlabel("N");
ylabel("X[k]");
grid on;

%-------------------------N=1024---------------------------------
subplot(2,2,4);
plot(n4,abs(Y4));
title("N=1024");
xlabel("N");
ylabel("X[k]");
grid on;
sgtitle("FFT");