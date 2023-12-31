[x,Fs]=audioread('file_example_WAV_2MG.wav');
sound(x,Fs);  %Play sound
pause(2);     % Pause
a=1;          %Range for Quantization
B=3;          %Number of Bits 
y=quadratic_quant(x,B,a);  %Obtained quantised values
sound(y,Fs);
pause(2);

for B = 1:8  %loop runs for 8 bit levels
    disp(B); %Display Bits value
    y=quadratic_quant(x,B,a);  %Obtained quantised values
    sound(y,Fs); 
    pause(2);
end