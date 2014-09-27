function [ totalVal ] = getHammingDist(motifSeqs,motifSize)
%get the hamming dist of two motif seqs
    shiftedMotifSeqs=cell(size(motifSeqs));
    for i=1:size(motifSeqs,2)-1
        shiftedMotifSeqs{1,i}=motifSeqs{1,i+1};
    end
    shiftedMotifSeqs{1,size(motifSeqs,2)}=motifSeqs{1,1};
    
    totalVal=0;
    for i=1:size(motifSeqs,2)
        motifSeqMat=cell2mat(motifSeqs(1,i));
        [ seqNumArray ] = convertDNASeqstoNumArray( motifSeqMat );
        shiftedMotifSeqMat=cell2mat(shiftedMotifSeqs(1,i));
        [ shiftedSeqNumArray ] = convertDNASeqstoNumArray( shiftedMotifSeqMat );

        count=0;
        for j=1:motifSize
            if(shiftedSeqNumArray(1,j)~=seqNumArray(1,j))
                count=count+1;
            end
        end
        val=count/size(seqNumArray,2);
        totalVal=totalVal+val;
   end
   totalVal=totalVal/size(motifSeqs,2);

    
end

