m=matfile("q2_2.mat");
s1=m.x; %Loading mat file
%----change starting index of t as per requirement------
t=1:length(s1);  %specify the range of t
M=2;

l=t(1);
u=t(length(t));
t2=M*l:M*u;

y=Upsample(s1,M,t); %function call

subplot(2,1,1);
stem(t,s1);
title('3.2.b Upsample M=2');
xlabel('n');
ylabel('s1[n]');
subplot(2,1,2);
stem(t2,y);
title('3.2.b Upsample M=2');
xlabel('n');
ylabel('y[n]');
