function X=continuousFT(t,xt,a,b,w)

X = zeros(1,length(w));%Vector to store the transform 
j=1j;

for k = 1:length(w)    
    expr = xt*exp(-j*w(k)*t);
    X(k) = int(expr,t,a,b);
end

end