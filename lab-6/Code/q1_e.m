%---------------------------T=1-------------------------

%----------------Parameters definition-------------------
T=1;
syms t;


xt = piecewise(t<-T,0,(-T<=t) & (t<0),1+t,(t<=T) & (t>=0),1-t,t>T,0);%Triangular wave

w = -5:0.1:5;

%-------------Fourier transform function call------------
X = continuousFT(t,xt,-T,T,w);

%Plot1:------The real value of the transform-------------
subplot(2,2,1)
plot(w,real(X));
title('Real Value');
xlabel('w');
ylabel('Real(X(jw))');
grid on;

%Plot2:------The imaginary value of the transform--------
subplot(2,2,2)
plot(w,imag(X));
title('Imaginary Value');
xlabel('w');
ylabel('Img(X(jw))');
grid on;

%Plot3:-------The magnitude of the transform-------------
subplot(2,2,3)
plot(w,abs(X));
title('Absolute Value');
xlabel('w');
ylabel('|X(jw)|');
grid on;

%Plot4:---------The phase of the transform-----------
subplot(2,2,4)
plot(w,angle(X));
title('Phase Value');
xlabel('w');
ylabel('Phase(X(jw))');
grid on;

sgtitle('CTFT T=1');