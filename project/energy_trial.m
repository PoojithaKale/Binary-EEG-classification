
A = [RA1-LOF1;
     RAH1-LOF1;
     ROF1-LOF1;
     RPH1-LOF1;
     LA4-LOF1;
     LA5-LOF1;
     LAH5-LOF1;
     LAH6-LOF1;
     LPH6-LOF1;
     LPH7-LOF1;
     RA1-LPH7;
     RAH1-LPH7;
     ROF1-LPH7;
     RPH1-LPH7;
     LA4-LPH7;
     LA5-LPH7;
     LAH5-LPH7;
     LAH6-LPH7;
     LPH6-LPH7;
     RA1-LPH6;
     RAH1-LPH6;
     ROF1-LPH6;
     RPH1-LPH6;
     LA4-LPH6;
     LA5-LPH6;
     LAH5-LPH6;
     LAH6-LPH6;
     RA1-LAH6;
     RAH1-LAH6;
     ROF1-LAH6;
     RPH1-LAH6;
     LA4-LAH6;
     LA5-LAH6;
     LAH5-LAH6;
     RA1-LAH5;
     RAH1-LAH5;
     ROF1-LAH5;
     RPH1-LAH5;
     LA4-LAH5;
     LA5-LAH5;
     RA1-LA5;
     RAH1-LA5;
     ROF1-LA5;
     RPH1-LA5;
     LA4-LA5;
     RA1-LA4;
     RAH1-LA4;
     ROF1-LA4;
     RPH1-LA4;
     RA1-RPH1;
     RAH1-RPH1;
     ROF1-RPH1;
     RA1-ROF1;
     RAH1-ROF1;
     RA1-RAH1;];
 
 %% wavelet based classification (a)energy (b)co-efficient of variation
 energy = zeros(55,5);
 coeff_var = zeros(55,5);
 for i=1:55
     [r,cv] = wavelet_class(A(i,:));
     energy(i,:)=r;
     coeff_var(i,:)=cv;
 end
 
 %%
 
 