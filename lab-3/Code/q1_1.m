m=matfile("q1.mat");
xt=m.x;

N=20;
n=zeros(1,length(xt));
n(floor(length(xt)/2))=1;

h = MAS(n, N);

yn = conv(h, xt);
FN=1:length(yn);
stem(FN, yn);

xlabel("N");
ylabel("Convoluted Signal");
title('3.1.1');