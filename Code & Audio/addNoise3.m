function [inputWithNoise] = addNoise3(inputTrack, secondSignal)
%ADDNOISE1 Function adds a signal to an input audio signal
%   Detailed explanation goes here

inputLen = numel(inputTrack);
reducedSecondSignal = secondSignal(1:inputLen,:);

inputWithNoise = inputTrack + reducedSecondSignal;


end

