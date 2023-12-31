a=1;
Fs = 5000;
F0=10;
Ts = 1/Fs;
t_sample = 0:Ts:1; %intervals for sampling
xn = sin(2*pi*F0*t_sample); %sampled signal x[n]

for B=1:8
    if(B~=3 && B~=4)
        xq = quadratic_quant(xn,B,a); %getting quantized signal
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

        figure;
        h=histogram(eq,15); %plotting histogram
        xlabel('t') ;
        ylabel('x[n] - x_q[n]');
        title(sprintf('Quantization error B= %d',B));
    end

end

MAE = [];

%MAE ERROR GRAPH
figure;
for B=1:8
    xq = quadratic_quant(xn,B,a); %getting quantized signal
    eq = xn - xq; %Quantisation Error
    MAX_B = max(abs(eq(:))); %MAE
    MAE = [MAE,MAX_B];
end

B=1:8;
plot(B, MAE); %MAQE on y-axis and bits value on x-axis
xlabel('Bits Value') ;
ylabel('MAE'); 
title('Maximum Absolute Error');