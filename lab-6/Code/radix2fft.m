function X=radix2fft(x)

N=length(x);
X=zeros(1,N); %Vector to store DFT
j=1j;

if(N==1)
    X(1)=x(1);  %Base Case
else
even=zeros(1,N/2); %Vector to store even part of signal
odd=zeros(1,N/2);  %Vector to store odd part of signal

    for k=1:N
        if(mod(k,2)~=0)
        even((k+1)/2)=x(k);
        else
        odd(k/2)=x(k);
        end
    end

    Xe=radix2fft(even); %Recursively calling the function
    Xo=radix2fft(odd);  %Recursively calling the function
    for k=1:N 
        if(k<=N/2)
        X(k)=Xe(k)+exp(-j*2*pi*(k-1)/N)*Xo(k);
        else
        X(k)=Xe(k-N/2)+exp(-j*2*pi*(k-1)/N)*Xo(k-N/2);
        end
    end
end

end



