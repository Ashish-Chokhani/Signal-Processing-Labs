fs = 10000;
adsr = [0.2,0.2,0.8,0.4,0.2];

A=	440;
B=	494;
C=	523;
D=	294;
E=	330;
F=	349;
G=	392;

F_notes = [C,0,C,0,G,0,G,0,A,0,A,0,G,0,0,F,0,F,0,E,0,E,0,D,0,D,0,C,0,0];
Am = [1,0,1,0,1,0,1,0,1,0,1,0,1,0,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,0];

F_notes = [F_notes,0,G,0,G,0,F,0,F,0,E,0,E,0,D,0,0,G,0,G,0,F,0,F,0,E,0,E,0,D,0];
Am = [Am,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0];

Am=transpose(Am);
l=size(F_notes);

td_notes = 0.3 * ones(l); 
P = zeros(size(Am));
P=transpose(P);

y= my_synthesizer(Am,F_notes,P,adsr,td_notes,fs);
soundsc(y,fs);

audiowrite('q5_e_Audio.wav',y,fs)