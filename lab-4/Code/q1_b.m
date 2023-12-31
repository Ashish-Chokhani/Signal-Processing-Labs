%-------------------------unit impulse--------------------------
w = -10:0.01:10;
N0 = 1;
x = [1];
X = DT_Fourier(x,N0,w); %---------Calling the function-----------

figure;
subplot(2,2,1); plot(w,real(X));
grid on;
title("Impulse del[n]");
ylabel("Real part");
xlabel("w");
subplot(2,2,2); plot(w,imag(X));
grid on;
ylabel("Imaginary part");
xlabel("w");
subplot(2,2,3); plot(w,abs(X));
grid on;
ylabel("Magnitude");
xlabel("w");
subplot(2,2,4); plot(w,angle(X));
grid on;
ylabel("Phase");
xlabel("w");

sgtitle("Discrete time Fourier Transform(DTFT)");

%-------------------------Shifted impulse-------------------------
N0 = 4;
x = [1,0,0,0];
X = DT_Fourier(x,N0,w);  %---------Calling the function-----------

figure;
subplot(2,2,1); plot(w,real(X));
grid on;
title("Shifted impulse del[n+3]");
ylabel("Real part");
xlabel("w");
subplot(2,2,2); plot(w,imag(X));
grid on;
ylabel("Imaginary part");
xlabel("w");
subplot(2,2,3); plot(w,abs(X));
grid on;
ylabel("Magnitude");
xlabel("w");
subplot(2,2,4); plot(w,angle(X));
grid on;
ylabel("Phase");
xlabel("w");

sgtitle("Discrete time Fourier Transform(DTFT)");

%-------------------------Rectangular impulse-------------------------
N0 = 4;
x = [1,1,1,1,1,1,1];
X = DT_Fourier(x,N0,w);  %---------Calling the function--------------

figure;
subplot(2,2,1); plot(w,real(X));
grid on;
title("Rectangular impulse");
ylabel("Real part");
xlabel("w");
subplot(2,2,2); plot(w,imag(X));
grid on;
ylabel("Imaginary part");
xlabel("w");
subplot(2,2,3); plot(w,abs(X));
grid on;
ylabel("Magnitude");
xlabel("w");
subplot(2,2,4); plot(w,angle(X));
grid on;
ylabel("Phase");
xlabel("w");

sgtitle("Discrete time Fourier Transform(DTFT)");


%------------------Finite duration sinusoid-----------------------
w0=pi/4;
N0 = 201;
n=-200:200;
x=sin(w0*n);
X = DT_Fourier(x,N0,w);  %---------Calling the function-----------

figure;
subplot(2,2,1); plot(w,real(X));
grid on;
title("Finite duration sinusoid");
ylabel("Real part");
xlabel("w");
subplot(2,2,2); plot(w,imag(X));
grid on;
ylabel("Imaginary part");
xlabel("w");
subplot(2,2,3); plot(w,abs(X));
grid on;
ylabel("Magnitude");
xlabel("w");
subplot(2,2,4); plot(w,angle(X));
grid on;
ylabel("Phase");
xlabel("w");

sgtitle("Discrete time Fourier Transform(DTFT)");