function [ freqCountMat ] = frequencyCounts( residueOccMat,numberOfDNASeqs,beta )
%This funciton is to get frequency counts given residueOccMat
%written by Chao Fang
freqCountMat=zeros(size(residueOccMat));
firstColTotal=sum(residueOccMat(:,1));
    for i=1:4
        for j=2:size(residueOccMat,2)
           freqCountMat(i,j)= (residueOccMat(i,j)+beta)/(numberOfDNASeqs-1+4*beta);
            
        end
        freqCountMat(i,1)=(residueOccMat(i,1)+beta)/(firstColTotal+4*beta);
    end

    
  
        
        
    
end

