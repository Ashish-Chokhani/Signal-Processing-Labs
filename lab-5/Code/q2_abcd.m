x1n=randn(1,10);
x2n=zeros(1,10);
x2n(4)=1;

N=10;

y1n=conv(x1n,x2n);

y2n=cconv(x1n,x2n,10);
 

dft_x1_1 = fft(x1n);
dft_x1_2 = fft(x1n,length(x1n)+length(x2n)-1);
dft_x2_1 = fft(x2n);
dft_x2_2 = fft(x2n, length(x1n)+length(x2n)-1);

y3n = dft_x1_1 .* dft_x2_1;
y4n = dft_x1_2 .* dft_x2_2;

circular = ifft(y3n, N);

linear = ifft(y4n, length(x1n)+length(x2n)-1);

figure();
subplot(2, 2, 1);
stem(y1n);
title("Linear Convolution using conv");
ylabel("y1[n]");
xlabel("n");
grid on;

subplot(2,2, 2);
stem(y2n);
title("Circular Convolution using cconv");
ylabel("y2[n]");
xlabel("n");
grid on;


subplot(2, 2, 3);
stem(linear);
title("Linear Convolution using fft and ifft");
ylabel("y1[n]");
xlabel("n");
grid on;


subplot(2, 2, 4);
stem(circular);
title("Circular Convolution using fft and ifft");
ylabel("y2[n]");
xlabel("n");
grid on;

sgtitle("Convolution");

