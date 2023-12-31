 %Defining Parameters for calculating FS coefficients
 syms t;
 N=5;
 T=1;
 t1=0;
 t2=10;
 xt=2*cos(2*pi*t)+cos(6*pi*t);
 %Function call
 F=fourierCoeff(t,xt,T,t1,t2,N);
 FS_idx=-N:N;
 figure;
 stem(FS_idx,F);
 xlabel('k');
 ylabel('a(k)');
 title('FS coefficients');
 grid on; 