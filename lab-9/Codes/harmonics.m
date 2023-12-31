function xt = harmonics(A,fo,P,td,fs)

k = 1:size(A);
Fo = fo*(transpose(k));
xt = SineSum(A,Fo,P,td,fs);

end