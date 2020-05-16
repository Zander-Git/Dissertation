function [matrixOfFiltersS3, times] = filtersS3(inputTrack)
%FILTERSS3 Inputs a track and produces a matrix of reults for different 
% filters acting on that track
%   Detailed explanation goes here


noFilter = inputTrack;
tic;
butter = filter(butterFilt3,inputTrack);
toc;
butterTime = toc;
tic;
cheby = filter(chebyFilt3,inputTrack);
toc;
chebyTime = toc;
tic;
ellip = filter(ellipFilt3,inputTrack);
toc;
ellipTime = toc;
tic;
equir = filter(equirFilt3,inputTrack);
toc;
equirTime = toc;
times = [0; butterTime; chebyTime; ellipTime; equirTime;];
matrixOfFiltersS3 = [noFilter butter cheby ellip equir];

end

