load handel.mat;

f0 = 1024;
Fs=8192;
t=0:1/Fs:8.9249; %8.249 is duration
noise = sin(2*pi*f0*t);
N = transpose(noise);
y3 = y + N;

%----------------For Q2 (a) FIR Filter-------------------------
w0 = pi/4;

b0 = 1/(2*(1-cos(w0)));

b1 = [1, -2*cos(w0), 1];
b2 = b1*b0;

a =1;

[y1,z] = filter(b2, a, y3);

%---------------For Q2 (b) IIR Filter-------------------------

w0 = pi/4;
r0 = 0.9;

b0 = (1-(2*r0*cos(w0))+(r0*r0))/(2*(1-cos(w0)));

b1 = [1, -2*cos(w0), 1];
b2 = b1*b0;

a = [1, -2*r0*cos(w0), r0*r0];

[y2,zf] = filter(b2, a, y3);


figure;
subplot(2,2,1);
plot(transpose(y));
xlim([1 100]);
xlabel("n");
ylabel("x[n]");
title("Input Signal");

subplot(2,2,2);
plot(transpose(y1));
xlim([1 100]);
xlabel("n");
ylabel("y1[n]");
title("FIR Filtered Output Signal");

subplot(2,2,3);
plot(transpose(y));
xlim([1 100]);
xlabel("n");
ylabel("x[n]");
title("Input Signal");

subplot(2,2,4);
plot(transpose(y2));
xlim([1 100]);
xlabel("n");
ylabel("y2[n]");
title("IIR Filtered Output Signal");

sgtitle("Notch Filters");

