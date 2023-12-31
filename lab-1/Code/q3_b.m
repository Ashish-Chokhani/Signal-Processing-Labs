 %Defining Parameters for calculating FS coefficients
 T=1;
 T1=0.1;
 N=10*T;
 t1=0;
 t2=10;
 syms t;
 xt= piecewise((-T1<=t) & (t<=T1),1,0);
 F=fourierCoeff(t,xt,T,t1,t2,N);
 F=F*T;
 FS_idx=-N:N;
 figure;
 stem(FS_idx,F);
 xlabel('k');
 ylabel('Ta(k)');
 title('Scaled FS coefficients');
 grid on;