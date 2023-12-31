function y= partialfouriersum(A,T,time_grid)

w0=(2*pi)/T;
N=(length(A)-1)/2;
y=zeros(1,length(time_grid));
j=1j;

for k=-N:N
    x=A(k+N+1)*exp(j*k*w0*time_grid);
    y=y+x;
end

end
