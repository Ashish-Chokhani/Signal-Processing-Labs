%----------------------N=20------------------------

N=20;
L=4;
w0=(3*pi)/10;

Y=fft(xn,N);
n=0:N-1;
xn=(0.8).^n;

figure();
subplot(3,1,1);
stem(n,xn);
title('Sequence');
ylabel('x[n]');
xlabel('n');
grid on;

subplot(3,1,2);
stem(n,abs(Y));
title('Magnitude Spectrum');
ylabel('X(k)');
xlabel('n');
grid on;

subplot(3,1,3);
stem(n,angle(Y));
title('Phase Spectrum');
ylabel('X(k)');
xlabel('n');
grid on;

sgtitle("DFT of signal");