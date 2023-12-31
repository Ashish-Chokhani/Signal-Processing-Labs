%------------First plot--------------
%-------------b=0.01-----------------
w = -10:0.01:10;
n=0:1:100;
b=0.01;
a1=b;
a2=-b;
x1=(a1.^n);
x2=(a2.^n);
N0 = 1;
X1 = DT_Fourier(x1,N0,w); %---------Calling the function-----------
X2 = DT_Fourier(x2,N0,w); %---------Calling the function-----------

figure;
subplot(2,2,1); plot(n,x1);
grid on;
title("Signal 1");
ylabel("x1[n] a=b b=0.01");
xlabel("n");
subplot(2,2,2); plot(n,x2);
grid on;
title("Signal 2");
ylabel("x2[n] a=-b b=0.01");
xlabel("n");
subplot(2,2,3); plot(w,abs(X1));
grid on;
title("Signal 1");
ylabel("Magnitude Spectrum a=b b=0.01");
xlabel("w");
subplot(2,2,4); plot(w,abs(X2));
grid on;
title("Signal 2");
ylabel("Magnitude Spectrum a=b b=0.01");
xlabel("w");

sgtitle("Discrete time Fourier Transform(DTFT)");

%------------Second plot--------------
%-------------b=0.5-----------------
w = -10:0.01:10;
n=0:1:100;
b=0.5;
a1=b;
a2=-b;
x1=(a1.^n);
x2=(a2.^n);
N0 = 1;
X1 = DT_Fourier(x1,N0,w); %---------Calling the function-----------
X2 = DT_Fourier(x2,N0,w); %---------Calling the function-----------
 
figure;
subplot(2,2,1); plot(n,x1);
grid on;
title("Signal 1");
ylabel("x1[n] a=b b=0.5");
xlabel("w");
subplot(2,2,2); plot(n,x2);
grid on;
title("Signal 2");
ylabel("x2[n] a=-b b=0.5");
xlabel("w");
subplot(2,2,3); plot(w,abs(X1));
grid on;
title("Signal 1");
ylabel("Magnitude Spectrum a=b b=0.5");
xlabel("w");
subplot(2,2,4); plot(w,abs(X2));
grid on;
title("Signal 2");
ylabel("Magnitude Spectrum a=b b=0.5");
xlabel("w");

sgtitle("Discrete time Fourier Transform(DTFT)");

%------------Third plot--------------
%-------------b=0.99-----------------
w = -10:0.01:10;
n=0:1:100;
b=0.99;
a1=b;
a2=-b;
x1=(a1.^n);
x2=(a2.^n);
N0 = 1;
X1 = DT_Fourier(x1,N0,w); %---------Calling the function-----------
X2 = DT_Fourier(x2,N0,w); %---------Calling the function-----------

figure;
subplot(2,2,1); plot(n,x1);
grid on;
title("Signal 1");
ylabel("x1[n] a=b b=0.99");
xlabel("w");
subplot(2,2,2); plot(n,x2);
grid on;
title("Signal 2");
ylabel("x2[n] a=-b b=0.99");
xlabel("w");
subplot(2,2,3); plot(w,abs(X1));
grid on;
title("Signal 1");
ylabel("Magnitude Spectrum a=b b=0.99");
xlabel("w");
subplot(2,2,4); plot(w,abs(X2));
grid on;
title("Signal 2");
ylabel("Magnitude Spectrum a=b b=0.99");
xlabel("w");

sgtitle("Discrete time Fourier Transform(DTFT)");