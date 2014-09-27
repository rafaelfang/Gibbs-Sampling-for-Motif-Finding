function [ newMotifPos ] = drawRandomSampleFromNormalizedWeights( normalizedWeights )
%draw random sample from distribution

newMotifPos=find(rand<cumsum(normalizedWeights),1);

end

