function [ Rel_A ] = Rel_Amp( cD1,cD2,cD3,cD4,cD5 )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
cD = [cD1,cD2,cD3,cD4,cD5];
var_cD = var(cD,1);
mean_cD = mean(cD);
Rel_A = (var_cD.^2)./mean_cD;

end

