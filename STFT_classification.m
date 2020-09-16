 %% STFT based classification
 count = 0;
 seize = zeros(1,55);
 for i = 1:55
    if (co_stft(i,:)<-17.1) & (co_stft(i,:)>-18.55)
         seize(i)=1; 
     end 
 end
 count = sum(seize);