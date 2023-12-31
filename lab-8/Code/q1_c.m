wc=pi/6;
N=51;
n=-N:N;
nc=(N-1)/2;

hd=zeros(1,length(n));
wn=zeros(1,length(n));

for i=-N:N
    if(i~=nc)
    hd(i+N+1)=(1/pi)*sin(wc*(i-nc))*1/(i-nc);
    else
    hd(i+N+1)=wc/pi;
    end
end

zn=blackman(N);
for k=1:N
    wn(k+N)=zn(k);
end

h= hd .* wn;

subplot(3,1,1);
stem(n,hd);
xlabel('n');
ylabel('h[n]');
title('FIR FILTER');
w=-pi:2*pi/1000:pi;

H=fft(h,1001);
H=fftshift(H);

subplot(3,1,2);
plot(w,abs(H));
xlabel('k');
ylabel('|H(k)|');
title('Magnitude spectrum');

subplot(3,1,3);
plot(w,angle(H));
xlabel('k');
ylabel('/_ H(k)');
title('Phase spectrum');

sgtitle("Low-Pass FIR FILTER design using Blackman window");

H1=abs(H);
maxi=max(H1);

Hn=mag2db(H1/maxi);
figure;
plot(w,Hn);
xlabel('w');
ylabel('Magnitude in dB');
title('Magnitude spectrum');




