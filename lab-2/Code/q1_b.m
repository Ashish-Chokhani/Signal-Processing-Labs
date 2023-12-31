j=1j;
p=[0.5 -0.5 2+j 2-j];
p=[1+j 1+2j 1+3j 2+j];
[N,ROC,C,S]=roc_cs(p);
disp(N);
disp(ROC);
disp(C);
disp(S);

