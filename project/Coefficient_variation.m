function [ CV1,CV2,CV3,CV4,CV5 ] = Coefficient_variation( cD1,cD2,cD3,cD4,cD5 )
% Feature Extraction: Coefficient of variation
% Amplitude analysis of the EEG signal

var_cD1 = std(cD1,1);
var_cD2 = std(cD2,1);
var_cD3 = std(cD3,1);
var_cD4 = std(cD4,1);
var_cD5 = std(cD5,1);

mean_cD1 = mean(cD1);
mean_cD2 = mean(cD2);
mean_cD3 = mean(cD3);
mean_cD4 = mean(cD4);
mean_cD5 = mean(cD5);

CV1 = (var_cD1.^2)./mean_cD1;
CV2 = (var_cD2.^2)./mean_cD2;
CV3 = (var_cD3.^2)./mean_cD3;
CV4 = (var_cD4.^2)./mean_cD4;
CV5 = (var_cD5.^2)./mean_cD5;
end

