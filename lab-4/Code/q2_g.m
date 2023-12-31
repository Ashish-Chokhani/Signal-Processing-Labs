%---------------------------M=5---------------------------
%--------------------------DTFT--------------------------------

w = -10:0.01:10;
N0 = 500;
n=0:1:1000;
w0=pi/200;
M=5;

sn=5*sin(w0*n);
vn=randn([1 length(n)]); %------Generating Gaussian noise-----
xn=sn+vn;
figure;
subplot(2,2,1);
plot(n,sn);
grid on;
title("s[n]=5sin(w0n)");
xlabel("n");
ylabel("s[n]");
subplot(2,2,3);
plot(n,xn);
grid on;
title("x[n]=s[n]+v[n]");
xlabel("n");
ylabel("x[n]");

%-----------Moving average filter------------------

hn=zeros(1,M);   %-------Impulse response for y[n]---------
hn(1)=1;
hn(2)=-1;
yn=conv(xn,hn,'full'); %---performing convolution for filter------

subplot(2,2,2);        
plot(n,sn);
grid on;
title("s[n]=5sin(w0n)");
xlabel("n");
ylabel("s[n]");
subplot(2,2,4);
plot(yn);
grid on;
title("y[n]=(x * h)[n] Filtered signal");
xlabel("n");
ylabel("y[n]");

sgtitle("M=5");

X1 = DT_Fourier(xn,N0,w); %---------Calling the function-----------
X2 = DT_Fourier(yn,N0,w); %---------Calling the function-----------

figure;
subplot(2,2,1); plot(n,xn);
grid on;
title("x[n]=s[n]+v[n]");
ylabel("x[n]");
xlabel("n");
subplot(2,2,3); plot(yn);
grid on;
title("y[n]=(x * h)[n] Filtered signal");
ylabel("y[n]");
xlabel("n");
subplot(2,2,2); plot(w,abs(X1));
grid on;
title("Noisy version DTFT");
ylabel("Magnitude Spectrum");
xlabel("w");
subplot(2,2,4); plot(w,abs(X2));
grid on;
title("Filtered version DTFT");
ylabel("Magnitude Spectrum");
xlabel("w");

sgtitle("Discrete time Fourier Transform(DTFT) M=5");


%--------------------------M=21-------------------------------
%--------------------------DTFT--------------------------------

w = -10:0.01:10;
N0 = 500;
n=0:1:1000;
w0=pi/200;
M=21;

sn=5*sin(w0*n);
vn=randn([1 length(n)]); %------Generating Gaussian noise-----
xn=sn+vn;
figure;
subplot(2,2,1);
plot(n,sn);
grid on;
title("s[n]=5sin(w0n)");
xlabel("n");
ylabel("s[n]");
subplot(2,2,3);
plot(n,xn);
grid on;
title("x[n]=s[n]+v[n]");
xlabel("n");
ylabel("x[n]");

%-----------Moving average filter------------------

hn=zeros(1,M);   %-------Impulse response for y[n]---------
hn(1)=1;
hn(2)=-1;
yn=conv(xn,hn,'full'); %---performing convolution for filter------

subplot(2,2,2);        
plot(n,sn);
grid on;
title("s[n]=5sin(w0n)");
xlabel("n");
ylabel("s[n]");
subplot(2,2,4);
plot(yn);
grid on;
title("y[n]=(x * h)[n] Filtered signal");
xlabel("n");
ylabel("y[n]");

sgtitle("M=21");

X1 = DT_Fourier(xn,N0,w); %---------Calling the function-----------
X2 = DT_Fourier(yn,N0,w); %---------Calling the function-----------

figure;
subplot(2,2,1); plot(n,xn);
grid on;
title("x[n]=s[n]+v[n]");
ylabel("x[n]");
xlabel("n");
subplot(2,2,3); plot(yn);
grid on;
title("y[n]=(x * h)[n] Filtered signal");
ylabel("y[n]");
xlabel("n");
subplot(2,2,2); plot(w,abs(X1));
grid on;
title("Noisy version DTFT");
ylabel("Magnitude Spectrum");
xlabel("w");
subplot(2,2,4); plot(w,abs(X2));
grid on;
title("Filtered version DTFT");
ylabel("Magnitude Spectrum");
xlabel("w");

sgtitle("Discrete time Fourier Transform(DTFT) M=21");

%--------------------------M=51--------------------------------
%--------------------------DTFT--------------------------------

w = -10:0.01:10;
N0 = 500;
n=0:1:1000;
w0=pi/200;
M=51;

sn=5*sin(w0*n);
vn=randn([1 length(n)]); %------Generating Gaussian noise-----
xn=sn+vn;
figure;
subplot(2,2,1);
plot(n,sn);
grid on;
title("s[n]=5sin(w0n)");
xlabel("n");
ylabel("s[n]");
subplot(2,2,3);
plot(n,xn);
grid on;
title("x[n]=s[n]+v[n]");
xlabel("n");
ylabel("x[n]");

%-----------Moving average filter------------------

hn=zeros(1,M);   %-------Impulse response for y[n]---------
hn(1)=1;
hn(2)=-1;
yn=conv(xn,hn,'full'); %---performing convolution for filter------

subplot(2,2,2);        
plot(n,sn);
grid on;
title("s[n]=5sin(w0n)");
xlabel("n");
ylabel("s[n]");
subplot(2,2,4);
plot(yn);
grid on;
title("y[n]=(x * h)[n] Filtered signal");
xlabel("n");
ylabel("y[n]");

sgtitle("M=51");

X1 = DT_Fourier(xn,N0,w); %---------Calling the function-----------
X2 = DT_Fourier(yn,N0,w); %---------Calling the function-----------

figure;
subplot(2,2,1); plot(n,xn);
grid on;
title("x[n]=s[n]+v[n]");
ylabel("x[n]");
xlabel("n");
subplot(2,2,3); plot(yn);
grid on;
title("y[n]=(x * h)[n] Filtered signal");
ylabel("y[n]");
xlabel("n");
subplot(2,2,2); plot(w,abs(X1));
grid on;
title("Noisy version DTFT");
ylabel("Magnitude Spectrum");
xlabel("w");
subplot(2,2,4); plot(w,abs(X2));
grid on;
title("Filtered version DTFT");
ylabel("Magnitude Spectrum");
xlabel("w");

sgtitle("Discrete time Fourier Transform(DTFT) M=51");










