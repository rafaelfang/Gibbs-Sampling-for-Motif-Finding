function [ normalizedWeights ] = normalizeWeights( weights )
%normalize weights matrix
%written by Chao Fang

total=sum(weights);
normalizedWeights=weights./total;
end

