%----------------------N=4------------------------
N=4;
L=4;

xn=[ones(L,1);zeros(N-L,1)];
Y=fft(xn,N);
n=0:N-1;

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

%----------------------N=16------------------------
N=16;
L=4;

xn=[ones(L,1);zeros(N-L,1)];
Y=fft(xn,N);
n=0:N-1;

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

%----------------------N=64------------------------
N=64;
L=4;

xn=[ones(L,1);zeros(N-L,1)];
Y=fft(xn,N);
n=0:N-1;

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







