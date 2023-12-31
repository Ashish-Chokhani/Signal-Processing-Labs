%------------Plotting function sin(10*pi*t)+cos(5*pi*t)-------

t_fine=0:0.001:2;

xt=sin(10*pi*t_fine)+cos(5*pi*t_fine);
figure;
subplot(2,2,1);
plot(t_fine,xt);
grid on;
xlabel('t');
ylabel('xt');
title('Continuous sin(10*pi*t)+cos(5*pi*t)');

%-------------------This is Part 2--------------------------
Ts=0.1;
t_samples=0:Ts:2;
subplot(2,2,2);
xn=sin(10*pi*t_samples)+cos(5*pi*t_samples);
stem(t_samples,xn);
grid on;
xlabel('t');
ylabel('xt');
title('Discrete sin(10*pi*t)+cos(5*pi*t)');

sgtitle('Plotting continuous and discrete signal')

