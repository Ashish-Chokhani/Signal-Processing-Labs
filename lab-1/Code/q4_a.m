 %Defining Parameters for calculating FS coefficients
 syms t;
 N=5;
 T=1;
 t1=0;
 t2=10;
 xt=piecewise((-1/4<=t) & (t<=0),-t,(0<t) & (t<=1/4),t,0);
 F=fourierCoeff(t,xt,T,t1,t2,N);
 FS_idx=-N:N;
 figure;
 stem(FS_idx,F);
 xlabel('k');
 ylabel('a(k)');
 title('FS coefficients');
 grid on;