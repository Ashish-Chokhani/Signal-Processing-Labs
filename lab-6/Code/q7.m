%----------------First Audio Signal--------------------
[x1,Fs1]=audioread('file_example_WAV_1MG.wav');
info1=audioinfo('file_example_WAV_1MG.wav');
sound(x1,Fs1);  %Play sound

%----------------Second Audio Signal--------------------
[x2,Fs2]=audioread('file_example_WAV_2MG.wav');
info2=audioinfo('file_example_WAV_1MG.wav');
sound(x2,Fs2);  %Play sound

%----------------Third Audio Signal--------------------
[x3,Fs3]=audioread('file_example_WAV_5MG.wav');
info3=audioinfo('file_example_WAV_1MG.wav');
sound(x3,Fs3);  %Play sound

%----------------Fourth Audio Signal--------------------
[x4,Fs4]=audioread('file_example_WAV_10MG.wav');
info4=audioinfo('file_example_WAV_1MG.wav');
sound(x4,Fs4);  %Play sound


%---------------------Solutions to Theory Questions--------------

%Note: The below explanation is valid for all audio files.

%bit rate = No. of bits per sample =16

% Sampling frequency= No. of samples per second=8000 Hz

%Length of loaded signal=268237

%Duration of signal = Length of loaded signal/Sampling frequency
%                   = 33.5296

%Levels of quantization ADC can perform: 2^16

% On decreasing sampling frequency, we observe that sample is stretched in
% time domain

%On increasing sampling frequency, we observe that sample is compressed in
% time domain which seems like sample is playing fast

%Property of Fourier Transform used here

%Frequency scaling: If a function is expanded in time by a quantity a, 
% the Fourier Transform is compressed in frequency by same amount and vice-versa.
