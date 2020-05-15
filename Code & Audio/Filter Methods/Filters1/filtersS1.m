function [matrixOfFiltersS1, times] = filtersS1(inputTrack)
%FILTERSS1 Inputs a track and produces a matrix of reults for different 
% filters acting on that track
%   Detailed explanation goes here


noFilter = inputTrack;
tic;
butter = filter(butterFilt1,inputTrack);
toc;
butterTime = toc;
tic;
cheby = filter(chebyFilt1,inputTrack);
toc;
chebyTime = toc;
tic;
ellip = filter(ellipFilt1,inputTrack);
toc;
ellipTime = toc;
tic;
equir = filter(equirFilt1,inputTrack);
toc;
equirTime = toc;
times = [0; butterTime; chebyTime; ellipTime; equirTime;];
matrixOfFiltersS1 = [noFilter butter cheby ellip equir];

end

