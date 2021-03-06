function [similarityCoefficient] = CustomCompare(firstNumbers,secondNumbers)
%CorrFinder Function finds the correlation between two number sets
[C,lag] = xcorr(firstNumbers,secondNumbers);

[~,I] = max(abs(C));
SampleDiff = lag(I);
if (SampleDiff<0)
    CsecondNumbers = firstNumbers;
    DfirstNumbers = secondNumbers;
    secondNumbers = CsecondNumbers;
    firstNumbers = DfirstNumbers;

[C,lag] = xcorr(firstNumbers,secondNumbers);
[~,I] = max(abs(C));
SampleDiff = lag(I);
end

if ( SampleDiff == 0 || numel(firstNumbers) == numel(secondNumbers) )
    cc = corrcoef(secondNumbers,firstNumbers);
    similarityCoefficient = cc(1,2);            
elseif (SampleDiff + numel(secondNumbers)) > numel(firstNumbers) +10 || SampleDiff<0
    Result = "Probably not the same";     
    similarityCoefficient = Result;
else
    closestMatched = firstNumbers(SampleDiff:numel(secondNumbers) + SampleDiff -1);
    cc = corrcoef(secondNumbers,closestMatched);
    similarityCoefficient = cc(1,2);
end   
end