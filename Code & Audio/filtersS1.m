function [matrixOfFiltersS1] = filtersS1(inputTrack)
%FILTERSS1 Inputs a track and produces a matrix of reults for different 
% filters acting on that track
%   Detailed explanation goes here

% [b,a] = butter(5,[1.1e4 1.2e4]/(sampleRate/2),'stop');
% 
% [d,c] = cheby1(5,5,[1.1e4 1.2e4]/(sampleRate/2),'stop');
% 
% % ...
noFilter = inputTrack;
butter = filter(butterFilt,inputTrack);
cheby = filter(chebyFilt,inputTrack);
ellip = filter(ellipFilt,inputTrack);
equir = filter(equirFilt,inputTrack);

matrixOfFiltersS1 = [noFilter butter cheby ellip equir];

% fart = CustomCompare(butterFilt,inputTrack)
% farts = CustomCompare(cheby1Filt,inputTrack)


end

