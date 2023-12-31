t = -10:10; 
M=2;

l=t(1);
u=t(length(t));
y=zeros(1,length(t));

t2=l*M:u*M;
y1=zeros(1,length(t2));

for n=l:u
    y(n-l+1)=n;
end

y1=Upsample(y,M,t);

t3=M*l:M:M*u;

y1=interp1(t3,y,t2);
subplot(2,1,1);
stem(t,y);
title('3.2.a Linear Interpolation M=2');
ylabel('x[n]');
xlabel('n');
subplot(2,1,2);
plot(t2,y1);
title('3.2.a Linear Interpolation M=2');
xlabel('n');
ylabel('y[n]');


