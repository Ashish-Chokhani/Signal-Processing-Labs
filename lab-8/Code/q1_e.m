wc=pi/6;
N=51;
n=-N:N;
nc=(N-1)/2;

hd=zeros(1,length(n));
wn1=zeros(1,length(n));
wn2=zeros(1,length(n));

for i=-N:N
    if(i~=nc)
    hd(i+N+1)=(1/pi)*sin(wc*(i-nc))*1/(i-nc);
    else
    hd(i+N+1)=wc/pi;
    end
end

wn1=((n>=0) & (n<=N-1));

zn=blackman(N);
for k=1:N
    wn2(k+N)=zn(k);
end

h1n= hd .* wn1;
h2n= hd .* wn2;


n=0:200;
xn=cos(pi*n/16)+0.25*sin(pi*n/16);

figure;
subplot(3,1,1);
stem(0:length(xn)-1,xn);
xlabel('n');
ylabel('x[n]');
title('Original signal');

y1n=conv(xn,h1n);
subplot(3,1,2);
stem(y1n);
xlabel('n');
ylabel('y1[n]');
title('Through rectangular window');

yn=conv(xn,h2n);
subplot(3,1,3);
stem(yn);
xlabel('n');
ylabel('y2[n]');
title('Through Blackman window');

sgtitle("Filtering of signal");

n=0:200;
xn=cos(pi*n/16)+0.25*randn(1,201);

figure;
subplot(3,1,1);
stem(0:length(xn)-1,xn);
xlabel('n');
ylabel('x[n]');
title('Original signal');

y1n=conv(xn,h1n);
subplot(3,1,2);
stem(y1n);
xlabel('n');
ylabel('y1[n]');
title('Through rectangular window');

yn=conv(xn,h2n);
subplot(3,1,3);
stem(yn);
xlabel('n');
ylabel('y2[n]');
title('Through Blackman window');

sgtitle("Filtering of signal");