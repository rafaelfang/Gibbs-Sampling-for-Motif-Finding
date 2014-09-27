function [ weights ] = calculateWeightsForHiddenSequence( DNASeqs,freqCountMat,pickedSeqInd,motifSize )
%this function will calculate the weights for hidden sequence
%written by Chao Fang

weights=zeros(1,size(DNASeqs{1,pickedSeqInd},2)-motifSize+1);
    for i=1:size(weights,2)
        hiddenSeq=DNASeqs{1,pickedSeqInd};
        candidateIndex=i:i+motifSize-1;
        candidateMotif=hiddenSeq(candidateIndex);
        numerator=1;
        denominator=1;
        for ind=1:size(candidateMotif,2)
            if(candidateMotif(1,ind)=='A'||candidateMotif(1,ind)=='a')
                numerator=numerator*freqCountMat(1,ind+1);
                denominator=denominator*freqCountMat(1,1);
            elseif(candidateMotif(1,ind)=='C'||candidateMotif(1,ind)=='c')
                numerator=numerator*freqCountMat(2,ind+1);
                denominator=denominator*freqCountMat(2,1);
            elseif(candidateMotif(1,ind)=='G'||candidateMotif(1,ind)=='g')
                numerator=numerator*freqCountMat(3,ind+1);
                denominator=denominator*freqCountMat(3,1);
            else
                numerator=numerator*freqCountMat(4,ind+1);
                denominator=denominator*freqCountMat(4,1);
            end
        end
        
        
        weights(1,i)=(numerator)/(denominator);

    end


end

