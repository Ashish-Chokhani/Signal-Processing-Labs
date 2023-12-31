n=1:200;
M=5;
xn=sin(n);
hn=(1/M)+zeros(1,M); %-------Calculated impulse response--------
yn=conv(xn,hn); %-------performing convolution---------
plot(yn);
title("Convolution");
xlabel("n");
ylabel("y[n]");
