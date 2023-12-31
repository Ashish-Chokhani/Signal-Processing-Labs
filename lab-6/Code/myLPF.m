function B = myLPF(A,w0_FS,wc)

B = zeros(1,length(A));

N=(length(A)-1)/2;

%The condition is put in order to filter out and produce non-zero value between -wc and wc

for k=-N:N
    if((k*w0_FS)>-wc & (k*w0_FS<wc))
    B(k+N+1)=A(k+N+1);
    end
end

end