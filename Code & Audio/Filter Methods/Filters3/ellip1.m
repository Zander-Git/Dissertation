function Hd = ellip1
%ELLIP1 Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.7 and Signal Processing Toolbox 8.3.
% Generated on: 16-May-2020 21:08:22

% Elliptic Bandstop filter designed using FDESIGN.BANDSTOP.

% All frequency values are in Hz.
Fs = 44100;  % Sampling Frequency

Fpass1 = 60;      % First Passband Frequency
Fstop1 = 90;      % First Stopband Frequency
Fstop2 = 130;     % Second Stopband Frequency
Fpass2 = 160;     % Second Passband Frequency
Apass1 = 0.5;     % First Passband Ripple (dB)
Astop  = 60;      % Stopband Attenuation (dB)
Apass2 = 1;       % Second Passband Ripple (dB)
match  = 'both';  % Band to match exactly

% Construct an FDESIGN object and call its ELLIP method.
h  = fdesign.bandstop(Fpass1, Fstop1, Fstop2, Fpass2, Apass1, Astop, ...
                      Apass2, Fs);
Hd = design(h, 'ellip', 'MatchExactly', match);

% [EOF]
