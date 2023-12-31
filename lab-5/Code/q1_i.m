[y,Fs]=audioread("Audio Files_6.wav");

L=length(y);
m=4;
N=m*L;

Y = fft(y, N);
n=(1-length(Y))/2:(length(Y)-1)/2;
stem(n, abs(Y));
title("DFT");
xlabel("N");
ylabel("X(k)");
