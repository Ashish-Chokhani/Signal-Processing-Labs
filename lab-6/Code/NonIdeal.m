function B = NonIdeal(A,w0_FS,G,a)

B = zeros(1,length(A));
j=1j;

N=(length(A)-1)/2;

for k=-N:N
    H= G/(k*w0_FS*j + a);
    B(k+N+1) = H*A(k+N+1); 
end
