function xr = sinc_recon(n,xn,Ts,t_fine)
% n - integer locations of the samples x[n]
% xn - the samples x[n] = x(n*Ts)
% Ts - the sampling interval
% t_fine - the time-grid for reconstruction of xr
% xr - reconstructed signal over time-grid t_fine

xr = zeros(1,length(t_fine));

for k = n
    xr=xr+(xn(k+1-n(1))*sinc((t_fine-k*Ts)/Ts)); %sinc(x) where x=(t_fine-k*Ts)/Ts
end

end