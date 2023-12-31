t = -10:10; 
M=2;

l=t(1);
u=t(length(t));
t2=M*l:M*u;
y=zeros(1,length(t));

for n=l:u
    y(n-l+1)=n;
end

%----change  index of t as per requirement------

y1=zero_order(y,M,t);

subplot(2,1,1);
stem(t,y);
title('3.2.a ZeroOrder M=2');
xlabel('n');
ylabel('x[n]');
subplot(2,1,2);
stem(t2,y1);
title('3.2.a ZeroOrder M=2');
xlabel('n');
ylabel('y[n]');