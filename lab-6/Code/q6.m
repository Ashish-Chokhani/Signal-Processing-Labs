%-----------------------Ts=0.5s----------------------------
t_fine = -10:0.001:10;
xt = 1 - abs(t_fine);

Ts = 0.5;
t_sample = -1:Ts:1;
xn = 1 - abs(t_sample); %Sampled signal
n = -1/Ts:1/Ts;
xt1 = sinc_recon(n,xn,Ts,t_fine); %Reconstruction

subplot(2,2,1);
hold on;
stem(t_sample,xn); %Plotting sampled signal
plot(t_fine,xt1);
xlabel('t');
ylabel('Ts=0.5');
hold off;
legend('Samples','reconstructed');


%-----------------------Ts=0.2s----------------------------
t_fine = -10:0.001:10;
xt = 1 - abs(t_fine);

Ts = 0.2;
t_sample = -1:Ts:1;
xn = 1 - abs(t_sample); %Sampled signal
n = -1/Ts:1/Ts;
xt2 = sinc_recon(n,xn,Ts,t_fine); %Reconstruction

subplot(2,2,2);
hold on;
stem(t_sample,xn); %Plotting sampled signal
plot(t_fine,xt2);
xlabel('t');
ylabel('Ts=0.2');
hold off;
legend('Samples','reconstructed');

%-----------------------Ts=0.1s----------------------------
t_fine = -10:0.001:10;
xt = 1 - abs(t_fine);

Ts = 0.1;
t_sample = -1:Ts:1;
xn = 1 - abs(t_sample); %Sampled signal
n = -1/Ts:1/Ts;
xt3 = sinc_recon(n,xn,Ts,t_fine); %Reconstruction

subplot(2,2,3);
hold on;
stem(t_sample,xn); %Plotting sampled signal
plot(t_fine,xt3);
xlabel('t');
ylabel('Ts=0.1');
hold off;
legend('Samples','reconstructed');


%-----------------------Ts=0.05s----------------------------
t_fine = -10:0.001:10;
xt = 1 - abs(t_fine);

Ts = 0.05;
t_sample = -1:Ts:1;
xn = 1 - abs(t_sample); %Sampled signal
n = -1/Ts:1/Ts;
xt4 = sinc_recon(n,xn,Ts,t_fine); %Reconstruction

subplot(2,2,4);
hold on;
stem(t_sample,xn); %Plotting sampled signal
plot(t_fine,xt4);
xlabel('t');
ylabel('Ts=0.05');
hold off;
legend('Samples','reconstructed');

sgtitle("Sampling of non-band-limited signal")