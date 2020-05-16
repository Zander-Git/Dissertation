function Hd = equir1
%EQUIR1 Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.7 and Signal Processing Toolbox 8.3.
% Generated on: 16-May-2020 21:11:29

% Equiripple Bandstop filter designed using the FIRPM function.

% All frequency values are in Hz.
Fs = 44100;  % Sampling Frequency

Fpass1 = 20;              % First Passband Frequency
Fstop1 = 90;              % First Stopband Frequency
Fstop2 = 130;             % Second Stopband Frequency
Fpass2 = 160;             % Second Passband Frequency
Dpass1 = 0.028774368332;  % First Passband Ripple
Dstop  = 0.001;           % Stopband Attenuation
Dpass2 = 0.057501127785;  % Second Passband Ripple
dens   = 20;              % Density Factor

% Calculate the order from the parameters using FIRPMORD.
[N, Fo, Ao, W] = firpmord([Fpass1 Fstop1 Fstop2 Fpass2]/(Fs/2), [1 0 ...
                          1], [Dpass1 Dstop Dpass2]);

% Calculate the coefficients using the FIRPM function.
b  = firpm(N, Fo, Ao, W, {dens});
Hd = dfilt.dffir(b);

% [EOF]