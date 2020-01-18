 %% wavelet based classification (a)energy (b)co-efficient of variation
 energy = zeros(55,5);
 seize = zeros(1,55);
 coeff_var = zeros(55,5);
 for i=1:55
     [r,cv] = wavelet_fetures(A(i,:));
     energy(i,:)=r;
     coeff_var(i,:)=cv;   
     if (energy(i,:)>=0.9996) & (coeff_var(i,:)>= -42526)
             seize(i)=1; 
     end 
 end
 count = sum(seize);
 