function [similarityCoefficient] = CustomCompare(firstNumbers,secondNumbers)
%CorrFinder Function finds the correlation between two number sets
%   Detailed explanation goes here

        [C,lag] = xcorr(firstNumbers,secondNumbers);

        [~,I] = max(abs(C));
        SampleDiff = lag(I);
        
%         delay = finddelay(secondNumbers,firstNumbers); %not needed as SampleDiff does this
        
        if (SampleDiff + numel(secondNumbers)) > numel(firstNumbers) || SampleDiff<0
            Result = "Probably not the same";      %TODO: Should make Result function
            similarityCoefficient = Result;
        else
                closestMatched = firstNumbers(SampleDiff:numel(secondNumbers) + SampleDiff -1);
            cc = corrcoef(secondNumbers,closestMatched);
            similarityCoefficient = cc(1,2);
        end   
end