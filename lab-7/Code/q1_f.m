a=1;
Fs = 5000;
F0=10;
Ts = 1/Fs;
t_sample = 0:Ts:1; %intervals for sampling
xn = sin(2*pi*F0*t_sample); %sampled signal x[n]

SQNR = [];

for B=1:8
    xq = quadratic_quant(xn,B,a); %getting quantized signal
    eq = xn - xq; %Quantisation Error
    Num = xn.^2; %Numerator
    Den = eq.^2; %Denominator
    NumSum = sum(Num(:));
    DenSum = sum(Den(:));
    SQNTb = NumSum/DenSum;
    SQNR = [SQNR, SQNTb];
end

B=1:8;

%SQNR GRAPH
figure;
plot(B,SQNR); %MAQE on y-axis and bits value on x-axis
xlabel('Bits Value') ;
ylabel('SQNR'); 
title('Signal to Quantization Noise Ratio');