t_fine = 0:0.001:2;
x_t = sin(10*pi*t_fine) + cos(5*pi*t_fine);

subplot(2,2,1);
plot(t_fine,x_t); %plotting original signal

hold on;
Ts=0.1;
t_samples=0:Ts:2;
xn=sin(10*pi*t_samples)+cos(5*pi*t_samples);

stem(t_samples,xn); %plotting sampled signal
hold off;
legend('original','sample');
xlabel('t');
ylabel('x(t)');

%--------------------First reconstuction--------------------

xt1 = interp1(t_samples,xn,t_fine,'previous');
subplot(2,2,2);
hold on;
plot(t_fine,x_t); %Plotting original signal
plot(t_fine,xt1);
xlabel('t');
ylabel('Zero order hold');
legend('original','sample');
hold off;

%------------------Second reconstruction---------------------

xt2 = interp1(t_samples,xn,t_fine,'linear');
subplot(2,2,3);
hold on;
plot(t_fine,x_t); %Plotting original signal
plot(t_fine,xt2);
xlabel('t');
ylabel('Linear interpolation');
legend('original','sample');
hold off;

%-------------------Third reconstruction---------------------

n=0:2/Ts;
xt3 = sinc_recon(n,xn,Ts,t_fine);
subplot(2,2,4);
hold on;
plot(t_fine,x_t); %Plotting original signal
plot(t_fine,xt3);
xlabel('t');
ylabel('sinc interpolation');
legend('original','sample');
hold off;

%-----------------Calculation of error-----------------

index = (t_fine>=0.25 & t_fine <=1.75);

%-------------For zero hold interpolation-----------------
max_zero_hold = max(abs(xt1(index) - x_t(index)));
disp('zero order hold :')
disp(max_zero_hold);

%---------------For linear interpolation----------------

max_linear = max(abs(xt2(index) - x_t(index)));
disp('linear interpolation :');
disp(max_linear);
 
%---------------For sinc interpolation--------------------
max_sinc = max(abs(xt3(index) - x_t(index)));
disp('sinc interpolation :')
disp(max_sinc);
