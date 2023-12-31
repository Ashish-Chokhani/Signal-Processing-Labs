adsr = [0.2,0.2,0.8,0.4,0.2];
fs = 10000;
N = 5;
k = 1:N;
A = 1./(k.*k);
A=transpose(A);
P = zeros(N,1);
P=transpose(P);

F_notes = 50:5:100;  
l=size(F_notes);
td_notes = ones(l); 

F_notes = 100:-10:40;  

y = my_synthesizer(A,F_notes,P,adsr,td_notes,fs);
soundsc(y,fs);