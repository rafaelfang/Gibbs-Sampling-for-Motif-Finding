function [ motifLocMat ] = chooseRandomMotifPosition( numberOfDNASeqs,motifSize,motifSeqs,pickedSeqInd )
%choose a random motif position for each sequence
%and assign random position to motifLocMat
%written by Chao Fang 

motifLocMat=zeros(numberOfDNASeqs,1);
    for i=1:numberOfDNASeqs
        if(i==pickedSeqInd)
            motifLocMat(i,1)=-1;
        else
            motifLocMat(i,1)=randi(size(motifSeqs{1,i},2)-motifSize+1,1,1);
        end
    end


end

