function [inputWithNoise] = addNoise1(inputTrack, sampleRate)
%ADDNOISE1 Function adds a WAVE THING to an input audio signal
%   Detailed explanation goes here

N = length(inputTrack);                                 % sample lenth
slength = N/sampleRate;                                 % Length (sec)
f   = 1E+3;                                             % Frequency (Hz)
t   = linspace(0, slength, (sampleRate*slength));       % Time Vector

signal = sin(2*pi*f*t);
signal = signal';
inputWithNoise = inputTrack + signal;



% hplayer = audioplayer(inputWithNoise, sampleRate);
% play(hplayer);

end

