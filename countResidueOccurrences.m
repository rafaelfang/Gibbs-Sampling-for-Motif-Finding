function [ residueOccMat ] = countResidueOccurrences( motifSize,DNASeqs,motifLocMat,pickedSeqInd )
%count the residue occurrences for each position for all unchosen sequences
%the residueOccMat has four rows, A,C,G, and T
%the residueOccMat has motifSize+1 columns
%written by Chao Fang
residueOccMat=zeros(4,motifSize+1);


    for i=1:size(motifLocMat,1)
        if(i==pickedSeqInd)
            continue;
        end
        motifIndex=motifLocMat(i,1):motifLocMat(i,1)+motifSize-1;
        motif=DNASeqs{1,i}(motifIndex);
        for motifInd=1:size(motif,2)
            if(motif(1,motifInd)=='A'||motif(1,motifInd)=='a')
                residueOccMat(1,motifInd+1)=residueOccMat(1,motifInd+1)+1;
            elseif(motif(1,motifInd)=='C'||motif(1,motifInd)=='c')
                residueOccMat(2,motifInd+1)=residueOccMat(2,motifInd+1)+1;
            elseif(motif(1,motifInd)=='G'||motif(1,motifInd)=='g')
                residueOccMat(3,motifInd+1)=residueOccMat(3,motifInd+1)+1;
            else 
                residueOccMat(4,motifInd+1)=residueOccMat(4,motifInd+1)+1;
            end
        end
        nonMotifIndex=setdiff((1:size(DNASeqs{1,i},2)),motifIndex);
        nonMotif=DNASeqs{1,i}(nonMotifIndex);
        for nonMotifInd=1:size(nonMotif,2)
            if(nonMotif(1,nonMotifInd)=='A'||nonMotif(1,nonMotifInd)=='a')
                residueOccMat(1,1)=residueOccMat(1,1)+1;
            elseif(nonMotif(1,nonMotifInd)=='C'||nonMotif(1,nonMotifInd)=='c')
                residueOccMat(2,1)=residueOccMat(2,1)+1;
            elseif(nonMotif(1,nonMotifInd)=='G'||nonMotif(1,nonMotifInd)=='g')
                residueOccMat(3,1)=residueOccMat(3,1)+1;
            else 
                residueOccMat(4,1)=residueOccMat(4,1)+1;
            end
        end
    end    


end

