%-----------------wc=pi/8-------------------------
syms w;
wc=pi/8;
n=-100:1:100;
j=1j;
X=piecewise(abs(w)<= wc,1,(wc<abs(w)) & (abs(w)<pi),0); %-defining X(exp(jw))
x=(1/(2*pi))*(int(X*exp(j*w*n),w,[-pi,pi]));  %-----Calculating x-----
figure;
plot(n,x);
grid on;
title("Inverse DTFT wc=pi/8")
ylabel("x[n]");
xlabel("n");

%-----------------wc=pi/4-------------------------
syms w;
wc=pi/4;
n=-100:1:100;
j=1j;
X=piecewise(abs(w)<= wc,1,(wc<abs(w)) & (abs(w)<pi),0); %-defining X(exp(jw))
x=(1/(2*pi))*(int(X*exp(j*w*n),w,[-pi,pi]));  %-----Calculating x-----
figure;
plot(n,x);
grid on;
title("Inverse DTFT wc=pi/4")
ylabel("x[n]");
xlabel("n");

%-----------------wc=pi/2-------------------------
syms w;
wc=pi/2;
n=-100:1:100;
j=1j;
X=piecewise(abs(w)<= wc,1,(wc<abs(w)) & (abs(w)<pi),0); %-defining X(exp(jw))
x=(1/(2*pi))*(int(X*exp(j*w*n),w,[-pi,pi]));  %-----Calculating x-----
figure;
plot(n,x);
grid on;
title("Inverse DTFT wc=pi/2")
ylabel("x[n]");
xlabel("n");

%-----------------wc=pi-------------------------
syms w;
wc=pi;
n=-100:1:100;
j=1j;
X=piecewise(abs(w)<= wc,1,(wc<abs(w)) & (abs(w)<pi),0); %-defining X(exp(jw))
x=(1/(2*pi))*(int(X*exp(j*w*n),w,[-pi,pi]));  %-----Calculating x-----
figure;
plot(n,x);
grid on;
title("Inverse DTFT wc=pi")
ylabel("x[n]");
xlabel("n");

