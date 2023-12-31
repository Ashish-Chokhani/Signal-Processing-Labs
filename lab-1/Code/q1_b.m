 %Defining Parameters for calculating FS coefficients
 N=10;
 T=1;
 T1=T/4;
 t1=0;
 t2=10;
 syms t;
 xt= piecewise((-T1<=t) & (t<=T1),1,0); %square wave
 %Function call
 F=fourierCoeff(t,xt,T,t1,t2,N);
 FS_idx=-N:N;
 figure;
 stem(FS_idx,F);
 xlabel('k');
 ylabel('a(k)');
 title('FS coefficients');
 grid on;