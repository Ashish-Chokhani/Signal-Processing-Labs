function y=zero_order(x,M,t)

l=t(1);
u=t(length(t));
t2=M*l:M*u;
y=zeros(1,length(t2)); % defining y of size M*(u-l+1) and initializing with 0

for n=M*l:M*u
        y(n-(M*l)+1)=x((floor(n/M))-l+1);  %y(n)=x(n/M) 
end

end
%{
subplot(2,1,1);
stem(t,x);
subplot(2,1,2);
stem(t2,y);
%}

