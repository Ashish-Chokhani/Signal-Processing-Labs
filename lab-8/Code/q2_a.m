w0 = pi/4;

b0 = 1/(2*(1-cos(w0)));

b1 = [1, -2*cos(w0), 1];
b2 = b1*b0;

a =1;

[h,w] = freqz(b2, a, 'whole', 2001);
plot(abs(h));
xlabel("w");
ylabel("H(e^ (jw)");
title("Frequency response for FIR filter");