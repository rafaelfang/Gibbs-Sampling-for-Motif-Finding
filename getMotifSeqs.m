function [ motifSeqs ] =getMotifSeqs( DNASeqs,motifSize,hiddenMotifPos,motifLocMat,pickedSeqInd,numberOfDNASeqs )
%get motif seqs given DNASeqs, motifSize and motifLocMat

motifSeqs=cell(1,numberOfDNASeqs);
    for i=1:numberOfDNASeqs
        if(i==pickedSeqInd)
            motifSeqs{1,i}=DNASeqs{1,i}(hiddenMotifPos:hiddenMotifPos+motifSize-1);
        else
            motifSeqs{1,i}=DNASeqs{1,i}(motifLocMat(i,1):motifLocMat(i,1)+motifSize-1);
    
        end

    end
end

