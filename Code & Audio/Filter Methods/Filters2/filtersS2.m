function [matrixOfFiltersS2, times] = filtersS2(inputTrack)
%FILTERSS1 Inputs a track and produces a matrix of reults for different 
% filters acting on that track
%   Detailed explanation goes here


noFilter = inputTrack;
tic;
butter = filter(butterFilt2,inputTrack);
toc;
butterTime = toc;
tic;
cheby = filter(chebyFilt2,inputTrack);
toc;
chebyTime = toc;
tic;
ellip = filter(ellipFilt2,inputTrack);
toc;
ellipTime = toc;
tic;
equir = filter(equirFilt2,inputTrack);
toc;
equirTime = toc;
tic;
window = filter(windowKaFilt2,inputTrack);
toc;
windowTime = toc;
times = [0; butterTime; chebyTime; windowTime; ellipTime; equirTime; ];
matrixOfFiltersS2 = [noFilter butter cheby window ellip equir ];

end

