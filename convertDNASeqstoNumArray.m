function [ numArray ] = convertDNASeqstoNumArray( DNASeq )
%convert DNA sequence to number array
    DNAlength=size(DNASeq,2);
    numArray=zeros(1,size(DNASeq,2));
    for i=1:DNAlength
        if(DNASeq(1,i)=='A'||DNASeq(1,i)=='a')
            numArray(1,i)=1;
        elseif(DNASeq(1,i)=='C'||DNASeq(1,i)=='c')
            numArray(1,i)=2;
        elseif(DNASeq(1,i)=='G'||DNASeq(1,i)=='g')
            numArray(1,i)=3;
        else
            numArray(1,i)=4;
        end
    end

end

