function y = quadratic_quant(x,B,a)

y=zeros(1,length(x));

L=2^B;

s = -a:2*a/L:a;
quan_Int = zeros(1,L+1);

for k=-L/2:L/2
    if(k<0)
        quan_Int(k+L/2+1)=-a*s(k+L/2+1)*s(k+L/2+1);
    else
        quan_Int(k+L/2+1)=a*s(k+L/2+1)*s(k+L/2+1);
    end
end

for i=1:length(x)
    for k=1:L
        if((x(i)>=quan_Int(k) && quan_Int(k+1)>x(i)) || (x(i)==a))
            y(i)=(quan_Int(k)+quan_Int(k+1))/2;

        end
    end
end

end