%-----------------wc=pi/16-------------------------
syms w;
wc=pi/16;
n=-100:1:100;
j=1j;
X=piecewise(abs(w)<=wc,1,(wc<abs(w)) & (abs(w)<pi),0); %-defining X(exp(jw))
x=(1/(2*pi))*(int(X*exp(j*w*n),w,[-pi,pi])); %-----Calculating x-----
figure;
plot(n,x);
title("Inverse DTFT wc=pi/16")
ylabel("x[n]");
xlabel("n");
