%---------------------------M=5---------------------------
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

hn=(1/M)+zeros(1,M);   %-------Impulse response for y[n]---------
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


%---------------------------M=21---------------------------
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

hn=(1/M)+zeros(1,M);   %-------Impulse response for y[n]---------
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


%---------------------------M=51---------------------------
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

hn=(1/M)+zeros(1,M);   %-------Impulse response for y[n]---------
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

sgtitle("M=51 Filtered signal");