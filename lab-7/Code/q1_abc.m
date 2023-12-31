a=1;
B=4;
Fs = 5000;
F0=10;
Ts = 1/Fs;
t_sample = 0:Ts:1; %intervals for sampling
xn = sin(2*pi*F0*t_sample); %sampled signal x[n]

figure;
subplot(3,1,1); 
plot(t_sample,xn); %plotting sampled signal
xlabel('t');
ylabel('x[n]'); 
title(sprintf('Sampled Signal B= %d',B));
    
subplot(3,1,2);
xq = quadratic_quant(xn,B,a); %getting quantized signal
plot(t_sample,xq); %plotting quantized signal
xlabel('t');
ylabel('x_q[n]'); 
title(sprintf('Quantized Signal B= %d',B));

subplot(3,1,3);
eq = xn - xq; %Quantisation Error
plot(t_sample,eq); 
xlabel('t') ;
ylabel('x[n] - x_q[n]'); 
title(sprintf('Quantization error B= %d',B));






