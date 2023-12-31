function xt = SineSum(A,F,P,td,fs)

t = 0:1/fs:td;
l=size(t);
xt = zeros(l);
for k =1:length(A)
    xt=xt+A(k)*sin(2*pi*F(k)*t + P(k)); 
end

end