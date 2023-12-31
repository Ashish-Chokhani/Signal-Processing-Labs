x=[1,2,4,8,16,32,64,128];

X=radix2fft(x); %Calling the function
X1=fft(x);      %Calling the function

disp("Manually");
disp(X);
disp("Through code");
disp(X1);

subplot(1,2,1) %Plotting the DFT
plot(X);
ylabel('X(k)');
xlabel('k');
title('FFT through code');
subplot(1,2,2)
plot(X1);
ylabel('X(k)');
xlabel('k');
title('FFT through inbuilt function');
sgtitle('Fast Fourier Transform');