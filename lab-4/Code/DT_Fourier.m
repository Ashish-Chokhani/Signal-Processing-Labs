function X=DT_Fourier(x,N0,w)

X=zeros(1,length(w));
j=1j;

for k=1-N0(1):length(x)-N0(1)
    y=x(k+N0(1))*(exp(-j*w*k));
    X=X+y;
end

end