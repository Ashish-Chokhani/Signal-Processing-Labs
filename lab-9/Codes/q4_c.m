adsr = [0.2,0.2,0.8,0.4,0.2];
fs = 10000;
N = 5;
M=5;
k = 1:N;
A = 1./(k.*k);
A=transpose(A);
P = zeros(N,1);
P=transpose(P);

F_notes = 50 + 50*rand(1,M); 
td_notes = 0.5 + round(rand(1,M));

y= my_synthesizer(A,F_notes,P,adsr,td_notes,fs);
soundsc(y,fs);