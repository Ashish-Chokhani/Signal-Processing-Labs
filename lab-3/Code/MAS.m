function y=MAS(x,N)
l=length(x);

y=zeros(1,l);
sum=zeros(1,l);

sum(1)=x(1);

for k=2:l
    sum(k)=x(k)+sum(k-1); % precomputing the sum
end

for n=1:l
    firstIndex=max(1,n-N+1); %start index=n-N+1
    if(firstIndex>=2)
        y(n)=sum(n)-sum(firstIndex-1);
    else
    y(n)=sum(n);
    end
end
y=y/N;

end

%{
subplot(2,1,1);
stem(t,x);
subplot(2,1,2);
stem(t,y);
%}

