
function y = my_synthesizer(A,F_notes,P,adsr,td_notes,fs)

% Initialize output as empty
y = [];

% Loop over the notes
for k = 1:length(F_notes)

    % scale a,d,sd,r so that they sum to required note duration
    a = td_notes(k)*adsr(1);   
    d = td_notes(k)*adsr(2);
    s = adsr(3);
    sd = td_notes(k)*adsr(4);
    r = td_notes(k)*adsr(5);
    
    % Compute the time vector and ADSR envelope for this note
    [t,env] = envelope(a,d,s,sd,r,fs);

    % Compute the sum of harmonics for this note
    xt = harmonics(A,F_notes(k),P,td_notes(k),fs);

    % Modulate the sum of harmonics with the envelope
    xte = xt .* env;

    % Add the note to the sequence
    y = [y,xte];
end

end