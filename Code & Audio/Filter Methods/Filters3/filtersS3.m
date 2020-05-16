function [matrixOfFiltersS3, times] = filtersS3(inputTrack)
%FILTERSS3 Inputs a track and produces a matrix of reults for different 
% filters acting on that track
%   Detailed explanation goes here


noFilter = inputTrack;
tic;
butter = filter(butter1,inputTrack);
butter = filter(butter2,butter);
butter = filter(butter3,butter);
toc;
butterTime = toc;

tic;
cheby = filter(cheby1,inputTrack);
cheby = filter(cheby2,cheby);
cheby = filter(cheby3,cheby);
toc;
chebyTime = toc;

tic;
ellip = filter(ellip1,inputTrack);
ellip = filter(ellip2,ellip);
ellip = filter(ellip3,ellip);
toc;
ellipTime = toc;

tic;
equir = filter(equir1,inputTrack);
equir = filter(equir2,equir);
equir = filter(equir3,equir);
toc;
equirTime = toc;

tic;
window = filter(window1,inputTrack);
window = filter(window2,window);
window = filter(window3,window);
toc;
windowTime = toc;

times = [0; butterTime; chebyTime; windowTime; ellipTime; equirTime; ];
matrixOfFiltersS3 = [noFilter butter cheby window ellip equir ];

end

