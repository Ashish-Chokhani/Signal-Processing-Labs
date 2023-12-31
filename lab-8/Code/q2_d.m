% ----------------For Q2 (a) FIR Filter ------------------------
w0 = pi/4;
b0 = 1/(2*(1-cos(w0)));

b1 = [1, -2*cos(w0), 1];
b2 = b1*b0;

a = 1;

fvtool(b2, a);

% ---------------For Q2 (b) IIR Filter ------------------------

w0 = pi/4;
r0 = 0.9;

b0 = (1-(2*r0*cos(w0))+(r0*r0))/(2*(1-cos(w0)));

b1 = [1, -2*cos(w0), 1];
b2 = b1*b0;

a = [1, -2*r0*cos(w0), r0*r0];

fvtool(b2, a);

% ---------------For Q2 (b) IIR Filter r0=0.5 ------------------------

w0 = pi/4;
r0 = 0.5;

b0 = (1-(2*r0*cos(w0))+(r0*r0))/(2*(1-cos(w0)));

b1 = [1, -2*cos(w0), 1];
b2 = b1*b0;

a = [1, -2*r0*cos(w0), r0*r0];

fvtool(b2, a);

% ---------------For Q2 (b) IIR Filter r0=0.99------------------------

w0 = pi/4;
r0 = 0.99;

b0 = (1-(2*r0*cos(w0))+(r0*r0))/(2*(1-cos(w0)));

b1 = [1, -2*cos(w0), 1];
b2 = b1*b0;

a = [1, -2*r0*cos(w0), r0*r0];

fvtool(b2, a);

