load handel.mat;

sound(y);

f0 = 1024;
Fs=8192;
t=0:1/Fs:8.9249; %8.249 is duration
noise = sin(2*pi*f0*t);
N = transpose(noise);
y = y + N;
sound(y,Fs);

%----------------For Q2 (a) FIR Filter-------------------------
w0 = pi/4;

b0 = 1/(2*(1-cos(w0)));

b1 = [1, -2*cos(w0), 1];
b2 = b1*b0;

a =1;

[y1,z] = filter(b2, a, y);
sound(y1);

%---------------For Q2 (b) IIR Filter-------------------------

w0 = pi/4;
r0 = 0.9;

b0 = (1-(2*r0*cos(w0))+(r0*r0))/(2*(1-cos(w0)));

b1 = [1, -2*cos(w0), 1];
b2 = b1*b0;

a = [1, -2*r0*cos(w0), r0*r0];

[y2,zf] = filter(b2, a, y);
sound(y2);