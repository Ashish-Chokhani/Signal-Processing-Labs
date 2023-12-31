function F = fourierCoeff(t,xt,T,t1,t2,N)

w0=(2*pi)/T;
F=zeros(2*N+1,1);

j=1j;

for nn=1:2*N+1
    F(nn)=(1/T)*int(xt*exp(j*(nn-N-1)*w0*t),t,-T/2,T/2);
end

end