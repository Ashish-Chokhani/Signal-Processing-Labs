%-----------------w1=pi/8 w2=pi/4-------------------------
syms w;
w1=pi/8;
w2=pi/4;
n=-100:1:100;
j=1j;
X=piecewise((abs(w)>=w1) & (abs(w)<=w2),1,0); %-defining X(exp(jw))
x=(1/(2*pi))*(int(X*exp(j*w*n),w,[-pi,pi]));  %-----Calculating x-----
figure;
plot(n,x);
grid on;
title("Inverse DTFT w1=pi/8 w2=pi/4")
ylabel("x[n]");
xlabel("n");


%-----------------w1=pi/2 w2=pi-------------------------
syms w;
w1=pi/2;
w2=pi;
n=-100:1:100;
j=1j;
X=piecewise((abs(w)>=w1) & (abs(w)<=w2),1,0); %-defining X(exp(jw))
x=(1/(2*pi))*(int(X*exp(j*w*n),w,[-pi,pi]));  %-----Calculating x-----
figure;
plot(n,x);
grid on;
title("Inverse DTFT w1=pi/2 w2=pi")
ylabel("x[n]");
xlabel("n");